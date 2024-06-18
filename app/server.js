import express from "express";
import ruta from "./routes";
const app = express();

app.use("/", ruta);

export default app;