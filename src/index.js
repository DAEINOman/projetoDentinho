const env = require('dotenv').config()
const express = require('express');
const routes = require('./routes/router')
const app = express()
routes(app)
app.listen('3000', () => {
    console.log('servidor iniciado com sucesso ')
})