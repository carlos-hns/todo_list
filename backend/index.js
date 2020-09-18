const express = require("express")
var cors = require('cors')
const bodyParser = require("body-parser")

const app = express()
const router = require("./routes")

app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))
app.use(router)

app.listen(8080, () => console.log("Server Rodando..."))
