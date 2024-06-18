import { Router } from "express";
import rutaComputador from "./routes.estudiante.js";
const ruta = Router();

ruta.use("/api", rutaestudiante);

export default ruta;