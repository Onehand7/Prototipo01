'use strict'


const connection = require('../../config/conexion')

//variable global, contiene toda las funciones de la api rest
var datamodels = {
    getUsers: (callback) => {
        if (connection) {
            let sql = 'select * from usuario'
            connection.query(sql, (error, rows) => {
                if (error) throw error
                callback(rows)
            })
        }
    },
    getOneUser: (data, callback) => {
        console.log("el idusuario:", data)
        if (connection) {
            let sql = `select*from usuario where idusuario=${connection.escape(data)}`
            connection.query(sql, (error, rows) => {
                if (error) throw error
                callback(rows)
            })
        }
    },
    addUser: (data, callback) => {
        if (connection) {
            let sql = `insert into usuario(nombre,apellido,email,telefono,id_tipousuario,idlogin)values (${connection.escape(data.nombre)},${connection.escape(data.apellido)},${connection.escape(data.email)},${connection.escape(data.telefono)},${connection.escape(data.id_tipousuario)},${connection.escape(data.idlogin)})`

            connection.query(sql, (error, rows) => {
                if (error) throw error
                callback({ message: 'Usuario Registrado' })
            })
        }
    },
    editUser: (data, callback) => {
        if (connection) {
            let sql = `update usuario set nombre=${connection.escape(data.nombre)}, apellido=${connection.escape(data.apellido)}, email=${connection.escape(data.email)}, telefono=${connection.escape(data.telefono)}, id_tipousuario=${connection.escape(data.id_tipousuario)}, idlogin=${connection.escape(data.idlogin)} where idusuario= ${connection.escape(data.idusuario)}`
            connection.query(sql, (error, rows) => {
                if (error) throw error
                callback({ message: 'Usuario Actualizado' })
            })
        }
    },
    deleteUser: (data, callback) => {
        if (connection) {
            let sql = `delete from usuario where idusuario=${connection.escape(data)}`

            connection.query(sql, (error, rows) => {
                if (error) throw error
                callback({ message: 'Usuario Eliminado' })

            })
        }
    }
}


module.exports = datamodels