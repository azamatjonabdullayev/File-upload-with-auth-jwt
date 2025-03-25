import UploadService from "../services/upload.service.js";

export default class UploadController {
  static async sendFile(req, res) {
    try {
      const message = await UploadService.uploadFile(req.files.file);
      res.status(201).send(message);
    } catch (error) {
      res.status(error.err_status || 500).json({ error: error.message });
    }
  }
}
