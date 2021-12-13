const express = require("express");
const app = express();

const routes=express.Router();

const {
    renderHome,
    catLista,
    quimicaListado,
    getForm,
    addnewUser
} = require('../controllers/gazetaControllers');

//pagina principal
routes.get("",renderHome);

//categorias
routes.get("/categorias",catLista);
routes.get("/categorias/quimica",quimicaListado);

//registro de usuarios
routes.get("/registrate",getForm);
routes.post("/registrate",addnewUser);

module.exports= routes;