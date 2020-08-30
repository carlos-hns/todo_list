const express = require("express")
const app = express()

app.get("/", (req, res) => {
    res.send("Teste")
})


app.listen(8080, () => console.log("Server Rodando..."))