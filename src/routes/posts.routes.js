import { Router } from "express";
import authMiddleware from "../middlewares/auth.middleware.js";
import UploadController from "../controllers/upload.controller.js";

const uploadRoutes = Router();

uploadRoutes.post(
  "/upload/file",
  authMiddleware,
  UploadController.sendFile(req, res)
);

export default uploadRoutes;
