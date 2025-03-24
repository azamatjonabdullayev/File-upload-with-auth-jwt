import jwt from "jsonwebtoken";

export default class JWTService {
  static createToken(data) {
    return data
      ? jwt.sign(data, process.env.JWT_KEY, { expiresIn: "1h" })
      : null;
  }

  static verifyToken(token) {
    return token ? jwt.verify(token, process.env.JWT_KEY) : null;
  }
}
