const {Router} = require('express')
const AccountController = require('../controllers/accountCotroller');
const router = Router()

//find Accounts
router.get('/accounts', AccountController.getAllAccounts)
router.get('/accounts/:id', AccountController.getAccountById)
router.post('/accounts/search', AccountController.getAccountByName)


//create Accounts
router.post('/accounts', AccountController.createAccount)

//update Accounts
router.put('/accounts/:id', AccountController.updateAccount)

//login Account
router.post('/login', AccountController.loginAccount)
module.exports = router