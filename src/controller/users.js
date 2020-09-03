

const usersModel = require('../model/users')
const formResponse = require('../helpers/form/formResponse')

const usersController ={
    showUser:(req, res)=>{
        const {page, limit} = req.query
        usersModel.showUser(page, limit)
        .then((data)=>{
            formResponse.pagination(req, res, data)
        }).catch((err)=>{
            formResponse.error(res, err)
        })
    },
    updateUser:(req, res)=>{
        usersModel.updateUser(req.params.id, req.body)
        .then((data)=>{
            formResponse.success(res, data)
        }).catch((err)=>{
            console.log(err)
            formResponse.error(res, err)
        })
    },
    deleteUser:(req, res)=>{
        usersModel.deleteUser(req.params.id)
        .then((data)=>{
            formResponse.success(res, data)
        }).catch((err)=>{
            console.log(err)
            formResponse.error(res, err)
        })
    },
    searchUser:(req, res)=>{
        usersModel.searchUser(req.query)
        .then((data)=>{
            formResponse.pagination(req, res, data)
        }).catch((err)=>{
            console.log(err)
            formResponse.error(res, err)
        })
    },
    sortUser:(req, res)=>{
        usersModel.sortUser(req.query)
        .then((data)=>{
            formResponse.pagination(req, res, data)
        }).catch((err)=>{
            console.log(err)
            formResponse.error(res, err)
        })
    },


}


module.exports = usersController