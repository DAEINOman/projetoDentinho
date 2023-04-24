const { where, NUMBER } = require('sequelize')
const database = require('../models')



class AlternativesController {
    static async AlternativeForQuestions(req, res) {
        const { question_id } = req.params
        try {
            const alternatives = await database.Alternatives.findAll({ where: { question_id: question_id } })
            res.status(200).json(alternatives)

        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
}

module.exports = AlternativesController