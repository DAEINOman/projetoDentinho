const database = require('../models')
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken')
const yup =  require('yup')
class AccountController {

    
    static async getAllAccounts(req,res) {
        try {
            const allAcounts = await database.Accounts.findAll();
        return res.status(200).json(allAcounts)
        } catch (error) {
           return res.status(500).json(error.message)
        }  
    }



    static  async getAccountById(req,res){
        const { id} = req.params
        try {
            const account = await database.Accounts.findByPk(id);
            return res.status(200).json(account)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }

    static async getAccountByName(req,res){
        const { name} = req.body
        try {
            const account = await database.Accounts.findOne(
                {
                    where:{name}
                }
            )
            return res.status(200).json(account)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }



    static async  createAccount(req,res){
        const {
            name,
            email,
            password
        } = req.body
        try {
            if(!name || !email || !password){
                res.status(404).json("Falta alguma informação na requisição")
            }
            const passwordEncrypt = await bcrypt.hash(password, 10);
            await database.Accounts.create({
                name,
                email,
                password:passwordEncrypt,
                avatar:null,
                createdAt:new Date(),
                updatedAt: new Date()
            })
            
            return res.status(201).json('Conta criada com sucesso')
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }


    static async updateAccount(req,res) {
        const {
            name,
            email,
            avatar,
            password
        } = req.body
        const { id} = req.params
        try {
            const senhaCriptografada = await bcrypt.hash(senha, 10);  
            const accountAtualized = {
                id,
                name,
                email,
                avatar,
                password:senhaCriptografada
            }
              
        await database.Accounts.update(accountAtualized,{where:{id:Number(id)}}) 
        
        res.status(200).send(accountAtualized)
        } catch (error) {
            res.status(500).send(error.message)
        }
    }
    static async loginAccount(req,res){
        const { email, password } = req.body
        const loginSchema = yup.object().shape({
            email: yup.string().email('O email precisa ter um formato válido').required('O campo email é obrigatório'),
            password: yup.string().required('O campo senha é obrigatório')
        })
        try {
           
            const account = await database.Accounts.findOne({where:{email:email}})
          
            if (!account) {
                return res.status(404).json('O usuário não foi encontrado')
            }
            const passwordCorrect = await bcrypt.compare(password, account.password)
            if (!passwordCorrect) {
                return res.status(401).json('Email ou senha não conferem')
            }
            const passwordHash = process.env.KEY_JWT
            const token = jwt.sign({ id: account.id }, passwordHash, { expiresIn: '8h' })
            const { password: _, ...dadosaccounts } = account;
            return res.status(200).json({
                accounts: dadosaccounts,
                token
            });
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
    
}
module.exports = AccountController