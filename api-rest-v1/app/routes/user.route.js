'use strict'

const route= require('express').Router()
const { getUsers }= require('../controllers/user.controller')

route.route('/').get(getUsers)

module.exports= route