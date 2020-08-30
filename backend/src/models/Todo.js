const { DataTypes } = require("sequelize")
const connection = require("../db/index")

const Todo = connection.define("todo", {
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },
    todo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    tipoDoTodo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    feito: {
        type: DataTypes.BOOLEAN,
        allowNull: false
    }
})

module.exports = Todo