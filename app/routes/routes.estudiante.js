import { Router } from "express";
import { crear, eliminar, listar, modificar, mostrar } from "../controllers/controllers.estudiante.js";

const rutaestudiante = Router();

rutaestudiante.get("/estudiante", mostrar);
rutaestudiante.get("/estudiante/:id", listar);
rutaestudiante.post("/estudiante", crear);
rutaestudiante.put("/estudiante/:id", modificar);
rutaestudiante.delete("/estudiante/:id", eliminar);

export default rutaestudiante;