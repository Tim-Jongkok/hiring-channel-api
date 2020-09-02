
const fromResponse = require('../helpers/formResponse')
const usersModel = require('../model/users')
const { response } = require('express')
const formResponse = require('../helpers/formResponse')

const usersController ={
    showUser:(req, res)=>{
        usersModel.showUser()
        .then((data)=>{
            fromResponse.success(res, data)
        }).catch((err)=>{
            formResponse.error(res, err)
        })
    }

}


module.exports = usersController