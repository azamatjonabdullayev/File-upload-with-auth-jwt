import "dotenv/config.js";
import express from "express";
import allRoutes from "./routes/all.routes.js";
import pool from "./config/db.js";

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/api", allRoutes());
app.use("*", (_, res) => res.status(404).send("PAGE NOT FOUND"));

const PORT = process.env.PORT || 8080;

const start = async () => {
  try {
    app.listen(PORT, () =>
      console.log(`Server is running on http://localhost:${PORT}`)
    );
  } catch (error) {
    console.error(error.name, error.message);
    await pool.end();
    process.exit(1);
  }
};

start();
