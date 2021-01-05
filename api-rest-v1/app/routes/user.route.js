'use strict'

const route= require('express').Router()
const { getUsers, getOneUser, addUser, editUser, deleteUser }= require('../controllers/user.controller')

route.route('/').get(getUsers)

route.route('/:idusuario').get(getOneUser)

route.route('/').post(addUser)

route.route('/:idusuario').put(editUser)

route.route('/:idusuario').delete(deleteUser)

module.exports= route