const express = require("express")
const bodyParser = require("body-parser")

const app = express()
const router = require("./routes")

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(router)

app.listen(8080, () => console.log("Server Rodando..."))