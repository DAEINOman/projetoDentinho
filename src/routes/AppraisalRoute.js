const {Router} = require('express')
const AppraisalController = require('../controllers/appraisalController');
const router = Router()

router.get("/appraisalBoards", AppraisalController.getAllBoards)
router.get("/appraisalBoards/:id", AppraisalController.getBoardById)
router.post("/appraisalBoards", AppraisalController.getBoardByName)
module.exports = router