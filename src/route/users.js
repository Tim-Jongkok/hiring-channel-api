const express = require('express')
const usersRouter = express.Router()

const usersController = require('../controller/users')

const uploadImage = require('../helpers/middleware/fileUpload')


usersRouter.get('/',  usersController.showUser)
usersRouter.get('/sort',  usersController.sortUser)
usersRouter.get('/search',  usersController.searchUser)
usersRouter.post('/', )
usersRouter.patch('/:id', usersController.updateUser)
usersRouter.delete('/:id', usersController.deleteUser )






module.exports = usersRouter