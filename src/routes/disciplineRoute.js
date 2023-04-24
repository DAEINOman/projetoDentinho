const {Router} = require('express')
const DisciplineController = require('../controllers/disciplineController');
const router = Router()


router.get("/diciplines", DisciplineController.getAllDiciplines)
router.get("/diciplines/order", DisciplineController.getAllDiciplinesInOrder)
router.get("/diciplines/:id", DisciplineController.getDiciplinesById)
router.post("/diciplines", DisciplineController.getDiciplinesByName)



module.exports = router