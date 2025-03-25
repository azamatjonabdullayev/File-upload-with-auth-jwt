import "dotenv/config.js";
import express from "express";
import fileUpload from "express-fileupload";
import getAllRoutes from "./routes/all.routes.js";

const app = express();

app.use(express.json());
app.use(fileUpload());
app.use(express.urlencoded({ extended: true }));
app.use("/api", getAllRoutes());
app.use("*", (_, res) => res.status(404).send("PAGE NOT FOUND"));

const PORT = process.env.PORT || 8080;

const start = () => {
  try {
    app.listen(PORT, () =>
      console.log(`Server is running on http://localhost:${PORT}`)
    );
  } catch (error) {
    console.error(error.name, error.message);
    process.exit(1);
  }
};

start();
