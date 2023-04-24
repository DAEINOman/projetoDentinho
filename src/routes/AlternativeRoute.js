const {Router} = require('express')
const AlternativesController = require('./../controllers/alternativesController')
const router = Router()

router.get('/alternative/:question_id', AlternativesController.AlternativeForQuestions )

module.exports = router