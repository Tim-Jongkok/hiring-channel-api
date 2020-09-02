
const connection = require('../config/config')

const usersModel = {
    showUser: ()=>{
        return new Promise((resolve, reject)=>{
            const queryStr = `SELECT users.id, users.first_name, users.last_name, users.corporate_name, type.type_name, users.image, users.email, users.password, users.is_open, users_detail.description, users_detail.description, users_detail.field, users_detail.salary, users_detail.rating, users_detail.total_project  FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id`;
            connection.query(queryStr, (err, data)=>{
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