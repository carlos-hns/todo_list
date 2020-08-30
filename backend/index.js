const express = require("express")
const bodyParser = require("body-parser")

const app = express()
const router = require("./routes")

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(router)

//const sequelize = require("./src/db/index")
//sequelize.sync({
//    force: true
//});

app.listen(8080, () => console.log("Server Rodando..."))