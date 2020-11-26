'use strict'

const express = require("express");
const port = (process.env.PORT || 3000);


//iniciar express
const app = express()



//configuracion de puerto

app.set('port',port);

//admitir  middlewares

app.use(express.urlencoded({extended: false}))
app.use(express.json())


//rutas


//exportar variable app
module.exports = app