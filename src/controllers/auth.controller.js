import AuthService from "../services/auth.service.js";

export default class AuthController {
  static async signUp(req, res) {
    try {
      const registerToken = await AuthService.register(req.body);
      res.status(201).json({
        success: true,
        message: "Succesfully created a new user!",
        data: registerToken,
      });
    } catch (error) {
      res.status(error.err_status || 500).json(error.message || "Server error");
    }
  }

  static async signIn(req, res) {
    try {
      const loginToken = await AuthService.login(req.body);
      res.status(200).json({
        success: true,
        message: "Succesfully logged in!",
        data: loginToken,
      });
    } catch (error) {
      res.status(error.err_status || 500).json(error.message || "Server error");
    }
  }
}
