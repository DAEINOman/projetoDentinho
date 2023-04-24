const {Router} = require('express')
const JourneyController = require("../controllers/journeysController")
const router = Router()
router.get('/journey/:account_id', JourneyController.getJourneyById)
router.post('/journey/:account_id/create/:discipline_id', JourneyController.createJourneyById)
router.put('/journey/:account_id/update/:discipline_id', JourneyController.updateJourneyById)
module.exports = router