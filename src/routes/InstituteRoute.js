const {Router} = require('express')
const InstituteController = require('../controllers/instituteController');
const router = Router()


router.get("/institutes", InstituteController.getAllInstitutes)
router.get("/institutes/:uf", InstituteController.getAllInstitutesByUf)
router.get("/institutes/:id", InstituteController.getInstitutesById)
router.post("/institutes", InstituteController.getInstitutesByName)



module.exports = router