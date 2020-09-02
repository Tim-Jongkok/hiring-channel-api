
// require('dotenv').config()

const mySql = require('mysql')


const db = mySql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'hiring_channel_db',
    password: ''
})

db.connect(err => {
    if(err) throw err;
    console.log('database connected')
})

module.exports = db