"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _controller = require("../controllers/controllers.estudiante");
var rutaestudiante = (0, _express.Router)();
rutaestudiante.get("/estudiante", _controller.mostrar);
rutaestudiante.get("/estudiante/:id", _controller.listar);
rutaestudiante.post("/estudiante", _controller.crear);
rutaestudiante.put("/estudiante/:id", _controller.modificar);
rutaestudiante["delete"]("/estudiante/:id", _controller.eliminar);
var _default = exports["default"] = rutaestudiante;