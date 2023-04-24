const { where, NUMBER } = require('sequelize')
const database = require('../models')
const { AlternativeForQuestions } = require('./alternativesController')



class QuestionController {
    static async getTenQuestions(req, res) {
        const { discipline_id } = req.params
        try {
            let questions = await database.Questions.findAll({ where: { discipline_id: Number(discipline_id) } })
            questions = questions.splice(0, 10)
            let questionsWAlternatives = []
            for (const item of questions) {
                const alternatives = await database.Alternatives.findAll({ where: { question_id: item.id } })
                const instituto = await database.Institutes.findOne({ where: { id: Number(item.institution_id) } })
                const board = await database.Appraisal_boards.findOne({ where: { id: Number(item.appraisal_board_id) } })
                let obj = {
                    nameQuestion: `${board.name}- ${instituto.name}- ${instituto.uf}`,
                    statement: item.statement,
                    alternativa: alternatives
                }
                questionsWAlternatives.push(obj)
            }

            return res.status(200).json(questionsWAlternatives)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
    static async getOneQuestion(req, res) {
        const { discipline_id } = req.params
        try {
            let questions = await database.Questions.findOne({ where: { discipline_id: Number(discipline_id) } })
            const alternatives = await database.Alternatives.findAll({ where: { question_id: questions.id } })
            const instituto = await database.Institutes.findOne({ where: { id: Number(questions.institution_id) } })
            const board = await database.Appraisal_boards.findOne({ where: { id: Number(questions.appraisal_board_id) } })
            let obj = {
                nameQuestion: `${board.name}- ${instituto.name}- ${instituto.uf}`,
                statement: questions.statement,
                alternativa: alternatives
            }
            return res.status(200).json(obj)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
}

module.exports = QuestionController