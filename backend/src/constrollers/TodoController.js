const Todo = require("../models/Todo")

module.exports = {
    async criarTodo(req, res) {
        const { todo, feito } = req.body
        const newTodo = await Todo.create({ todo, feito });
        if (newTodo != null)
            return res.status(200).send("Todo criado com sucesso")
        return res.code(404).send("Ocorreu algum problema no processo")
    },
    async atualizarTodo(req, res){
        const id = req.params.id
        const { feito } = req.body
        const todo = await Todo.findByPk(id)
        if (todo != null){
            await Todo.update({feito}, {where: {id}}) 
            return res.status(200).send("Todo atualizado com sucesso") 
        }
        return res.code(404).send("Ocorreu algum problema no processo")
    },
    async deletarTodo(req, res){
        const id = req.params.id
        const todo = await Todo.findByPk(id)
        if (todo != null){
            await Todo.destroy({where: {id}})
            return res.status(200).send("Todo deletado com sucesso") 
        }   
        return res.code(404).send("Ocorreu algum problema no processo")
    },
}