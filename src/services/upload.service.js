import pool from "../config/db.js";
import path from "path";

const filePath = path.join(process.cwd(), "public", "uploads");

export default class UploadService {
  static async uploadFile(file) {
    if (!file) throw { err_status: 400, message: "No files provided" };

    const extName = path.extname(file.name);
    const fileName = `${Date.now()}${extName}`;

    const uploadPath = path.join(filePath, fileName);

    await file.mv(uploadPath);

    const { rowCount } = await pool.query(
      "INSERT INTO uploaded_files(name, filepath, type, size) VALUES($1, $2, $3, $4) RETURNING *",
      [file.name, uploadPath, file.mimetype, file.size]
    );

    if (rowCount === 0) throw { err_status: 500, message: "DB insert failed!" };

    return {
      status: "success",
      message: "File uploaded successfully",
    };
  }
}
