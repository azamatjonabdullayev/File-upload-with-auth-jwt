import pool from "../config/db.js";
import BcryptHash from "./bcrypt.service.js";
import JWTService from "./jwt.service.js";

export default class AuthService {
  static async register(user) {
    const { username, email, password } = user;
    if (!username || !email || !password)
      throw { err_status: 400, message: "Missing required fields" };

    const { rowCount } = await pool.query(
      "SELECT * FROM users WHERE email = $1",
      [email]
    );
    if (rowCount > 0)
      throw { err_status: 400, message: "Email is already in use" };

    const hashedPassword = await BcryptHash.hashPassword(password);

    const { rows: newUser } = await pool.query(
      "INSERT INTO users (username, email, password) VALUES ($1, $2, $3) RETURNING id, username, email",
      [username, email, hashedPassword]
    );

    return {
      token: JWTService.createToken(newUser[0]),
      user: newUser[0],
    };
  }

  static async login(user) {
    const { email, password } = user;

    if (!email || !password)
      throw { err_status: 400, message: "Missing required fields" };

    const { rows: user, rowCount } = await pool.query(
      "SELECT id, username, email, password FROM users WHERE email = $1",
      [email]
    );

    if (rowCount === 0)
      throw { err_status: 400, message: "Invalid email or password" };

    if (!(await BcryptHash.comparePassword(password, user[0].password)))
      throw { err_status: 400, message: "Invalid email or password" };

    return {
      token: JWTService.createToken({
        id: user[0].id,
        username: user[0].username,
        email: user[0].email,
      }),
      user: user[0],
    };
  }
}
