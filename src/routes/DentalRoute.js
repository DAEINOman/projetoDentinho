const {Router} = require('express')
const DentalController = require('../controllers/dentalController');
const router = Router()

// getDentalInfos
router.get("/dental/:account_id", DentalController.getInfosDental)
// createdentalInfos
router.post("/dental/:account_id", DentalController.createInfosDental)
//update dentalInfos
router.put("/dental/:id", DentalController.updateInfosDental)

module.exports = router


