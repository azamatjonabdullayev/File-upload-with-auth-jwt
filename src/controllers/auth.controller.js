import AuthService from "../services/auth.service.js";

export default class AuthController {
  static async registration(req, res) {
    try {
      const register = await AuthService.register(req.body);
      res.status(200).json({
        success: true,
        message: "Succesfully created a new user!",
        ...register,
      });
    } catch (error) {
      res.status(error.err_status || 500).json(error.message || "Server error");
    }
  }
}
