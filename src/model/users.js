
const connection = require('../config/config');

const usersModel = {
    showUser: (page, limit)=>{
        const offset = (page - 1) * limit;
        return new Promise((resolve, reject)=>{
            const queryStr = `SELECT users.id, users.first_name, users.last_name, users.corporate_name, type.type_name, users.image, users.email, users.password, users.is_open, users_detail.description, users_detail.description, users_detail.field, users_detail.salary, users_detail.rating, users_detail.total_project FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id LIMIT ? OFFSET ?`;
            connection.query(queryStr, [Number(limit), offset], (err, data)=>{
                if(!err){
                    resolve(data)
                }else{
                    reject(err)
                }
            })
        })
    },
    addNewUser: ()=>{
        return new Promise((resolve, reject)=>{
            const queryStr = ``
            connection.query(queryStr, (err,data)=>{
                if(!err){
                    resolve(data)
                }else{
                    reject(err)
                }
            })
        })
    },
    updateUser: (id, body)=>{
        return new Promise((resolve, reject)=>{
            const queryStr = `UPDATE users, users_detail SET ? WHERE users.id = users_detail.user_id AND users.id = ${id}`
            connection.query(queryStr,[body], (err, data)=>{
                if(!err){
                    console.log(data)
                    resolve(data)
                }else{
                    reject(err)
                }
            })
        })
    },
    deleteUser:(id)=>{
        return new Promise((resolve, reject)=>{
            const queryStr =`DELETE users, users_detail FROM users JOIN users_detail ON users.id = users_detail.user_id WHERE users.id = ?`
            connection.query(queryStr,[id], (err, data)=>{
                if(!err){
                    console.log(data)
                    resolve(data)
                }else{
                    reject(err)
                }
            })
        })
    },
    searchName:(query)=>{
        const page = query.page;
        const limit = query.limit;
        const offset = (page - 1) * limit;
        const name = query.name;
        return new Promise((resolve, reject)=>{
            const queryStr =`SELECT users.id, users.first_name, users.last_name, users.corporate_name, type.type_name, users.image, users_detail.description, users_detail.description, users_detail.field, users_detail.salary, users_detail.rating, users_detail.total_project  FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id WHERE users.first_name  LIKE "%${name}%" LIMIT ? OFFSET ?`
            connection.query(queryStr,[Number(limit), offset], (err, data)=>{
                if(!err){
                    resolve(data)
                }else{
                    reject(err)
                }
            })
        })
    },
    sortUser:(query)=>{
        const page = query.page;
        const limit = query.limit;
        const offset = (page - 1) * limit;
        const order = query.order;
        const by = query.by;
        return new Promise((resolve, reject)=>{
            const queryStr =`SELECT users.id, users.first_name, users.last_name, users.corporate_name, type.type_name, users.image, users_detail.description, users_detail.description, users_detail.field, users_detail.salary, users_detail.rating, users_detail.total_project  FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id ORDER BY ${by} ${order} LIMIT ? OFFSET ?`
            connection.query(queryStr,[Number(limit), offset], (err, data)=>{
                if(!err){
                    resolve(data)
                }else{
                    reject(err)
                }
            })
        })
    }
}


module.exports = usersModel