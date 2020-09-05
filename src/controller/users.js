
const formResponse = require('../helpers/forms/formResponse')
const usersModel = require('../model/users')
const { response } = require('express')

const usersController ={
    showUser:(req, res)=>{
        usersModel.showUser()
        .then((data)=>{
            formResponse.success(res, data)
        }).catch((err)=>{
            formResponse.error(res, err)
        })
    },
    updateUser:(req, res)=>{
        usersModel.updateUser(req.params.id, req.body)
        .then((data)=>{
            formResponse.success(res, data)
        }).catch((err)=>{
            formResponse.error(res, err)
        })
    }
}

module.exports = usersController