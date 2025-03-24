import JWTService from "../services/jwt.service.js";

export const authMiddleware = (req, res, next) => {
  try {
    if (!req.headers.authorization)
      throw { err_status: 401, message: "Unauthorized" };

    const token = req.headers.authorization.split(" ")[1];

    const user = JWTService.verifyToken(token);
    if (!user) throw { err_status: 401, message: "Invalid Token!" };
    req.user = user;
    next();
  } catch (error) {
    res
      .status(error.err_status || 500)
      .send(error.message || "Internal Server Error");
  }
};
