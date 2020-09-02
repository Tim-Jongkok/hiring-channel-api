require('dotenv').config()

const express = require('express') 

const bodyParser =require('body-parser') 
const logger = require('morgan')
const cors = require('cors')


const indexRouter = require('./src/route/index')

const app = express()

app.listen(process.env.PORT, ()=>{
    console.log('server is running')
})

app.use(cors())

app.use(bodyParser.json())

app.use(bodyParser.urlencoded({extended:false}))

app.use(logger('dev'))

app.use(indexRouter)