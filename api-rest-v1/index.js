'use strict'

const app = require('./app/app')

//importar database
require('./config/conexion')

//inicio de servidor
app.listen(app.get('port'), (error) => {
    if(error) {
        console.log(`Error encontrado : ${error}`)
    }else {
        console.log(`Servidor On en  : ${app.get('port')}`)
    }
})

