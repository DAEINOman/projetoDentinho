const {Router} = require('express')
const AccountController = require('../controllers/accountCotroller');
const { route } = require('./AccountRoute');
const QuestionController = require('../controllers/questionController');
const router = Router()

router.get('/questions/:discipline_id', QuestionController.getTenQuestions )
router.get('/onequestion/:discipline_id', QuestionController.getOneQuestion)
module.exports = router