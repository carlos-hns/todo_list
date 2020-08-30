const Sequelize = require("sequelize")
const dbConfig = require("./dbconfig")
const connection = new Sequelize(dbConfig)

module.exports = connection