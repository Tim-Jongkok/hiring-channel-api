const express = require('express')
const usersRouter = express.Router()

const usersController = require('../controller/users')


usersRouter.get('/', usersController.showUser)
usersRouter.post('/', )
usersRouter.patch('/')
usersRouter.delete('/')



module.exports = usersRouter