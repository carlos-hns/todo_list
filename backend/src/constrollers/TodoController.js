const Todo = require("../models/Todo");
const { Sequelize } = require("sequelize")
const Op = Sequelize.Op;

module.exports = {
    async criarTodo(req, res) {
        const { todo, feito, tipoDoTodo } = req.body
        const newTodo = await Todo.create({ todo, feito, tipoDoTodo });
        if (newTodo != null)
            return res.status(200).send("Todo criado com sucesso")
        return res.status(404).send("Ocorreu algum problema no processo")
    },
    async atualizarTodo(req, res) {
        const id = req.params.id
        const { feito } = req.body
        const todo = await Todo.findByPk(id)
        if (todo != null) {
            await Todo.update({ feito }, { where: { id } })
            return res.status(200).send("Todo atualizado com sucesso")
        }
        return res.status(404).send("Ocorreu algum problema no processo")
    },
    async deletarTodo(req, res) {
        const id = req.params.id
        const todo = await Todo.findByPk(id)
        if (todo != null) {
            await Todo.destroy({ where: { id } })
            return res.status(200).send("Todo deletado com sucesso")
        }
        return res.status(404).send("Ocorreu algum problema no processo")
    },
    async getTodos(req, res) {
        const { filtro, tipoDoTodo } = req.query;

        if (filtro == undefined && tipoDoTodo == undefined) {
            return res.status(200).json(await Todo.findAll())
        } else if (filtro == undefined && tipoDoTodo != undefined) {
            return res.status(200).json(await Todo.findAll({ where: { tipoDoTodo } }))
        } else if (filtro != undefined && tipoDoTodo == undefined) {
            let todos = await Todo.findAll({
                where: {
                    todo: {
                        [Op.like]: `%${filtro}%`
                    }
                }
            })
            return res.status(200).json(todos);
        } else if (filtro != undefined && tipoDoTodo != undefined) {
            let todos = await Todo.findAll({
                where: {
                    todo: {
                        [Op.like]: `%${filtro}%`
                    },
                    tipoDoTodo: tipoDoTodo
                }
            })
            return res.status(200).json(todos);
        }
        return res.status(404).send("Ocorreu algum problema no processo")
    }
}