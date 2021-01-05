'use strict'

const datamodels = require('../models/user.model')


function getUsers(req, res) {
    datamodels.getUsers((data,error)=>{
        //404 500
        res.json(data)
    })
}

function getOneUser(req, res) {
    console.log("idusuario : ",req.params)
    const { idusuario }= req.params
    datamodels.getOneUser(idusuario,(data,error)=>{
        res.json(data)
    })
}
function addUser(req,res){
    const {nombre,apellido,email,telefono,id_tipousuario,idlogin}= req.body
    console.log(`Usuarios: ${nombre},${apellido},${email},${telefono},${id_tipousuario},${idlogin}`)

    datamodels.addUser({nombre,apellido,email,telefono,id_tipousuario,idlogin},(data,error)=>{
        res.json(data)
    })
}
function editUser(req,res){
    const {idusuario}= req.params
    const {nombre,apellido,email,telefono,id_tipousuario,idlogin}= req.body
    datamodels.editUser({idusuario,nombre,apellido,email,telefono,id_tipousuario,idlogin},(data,error)=>{
        res.json(data)
    })
}
function deleteUser(req,res){
    const { idusuario }= req.params
    datamodels.deleteUser(idusuario,(data,error)=>{
        res.json(data)
    })
}

module.exports = {
    getUsers,
    getOneUser,
    addUser,
    editUser,
    deleteUser
}