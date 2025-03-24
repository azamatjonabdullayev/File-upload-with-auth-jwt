import { Router } from "express";
import AuthController from "../controllers/auth.controller.js";

const authRoutes = Router();

authRoutes.post("/auth/register", (req, res) =>
  AuthController.signUp(req, res)
);

authRoutes.post("/auth/login", (req, res) => AuthController.signIn(req, res));

export default authRoutes;
