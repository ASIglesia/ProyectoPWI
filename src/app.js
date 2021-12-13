//Requirements
const express = require("express");
const app = express();
const routes = require("./routes/gazetaRoutes");
const path= require('path');
const databaseConnection = require('../config/database');
const port=process.env.PORT || 4005; /*Run on given value port, or 3000 if none given */

//SQL
databaseConnection.connect();

//JSON
app.use(express.json());
app.use(express.urlencoded({extended:false}));

//EJS
app.set("views",path.join(__dirname,'views'));
app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname,'public')));

//routes
app.use("",routes);

//Port
app.listen(port,()=>{
    console.log("Running on port "+port)
});   