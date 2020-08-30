const { Router } = require("express")
const router = Router()
const todoController = require("./src/constrollers/TodoController")

router.post("/todos", todoController.criarTodo)
router.patch("/todos/:id", todoController.atualizarTodo)
router.delete("/todos/:id", todoController.deletarTodo)

module.exports = router