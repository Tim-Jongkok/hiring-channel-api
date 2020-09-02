const express = require('express')
const usersRouter = express.Router()

const usersController = require('../controller/users')


usersRouter.get('/',  usersController.sortUser, usersController.searchName,  usersController.showUser)
usersRouter.post('/', )
usersRouter.patch('/:id', usersController.updateUser)
usersRouter.delete('/:id', usersController.deleteUser )





module.exports = usersRouter