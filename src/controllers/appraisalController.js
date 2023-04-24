const database = require('../models')


class AppraisalController {

    
    static async getAllBoards(req,res) {
        
     try {
        const boards = await database.Appraisal_boards.findAll()
        res.status(200).json(boards)
     } catch (error) {
        res.status(500).json(error.message)
     }
    }



    static  async getBoardById(req,res){
        const{id} = req.params
        try {
            const board = await database.Appraisal_boards.findOne({where:{id:Number(id)}})
            if(!board){
                res.status(404).json({mensagem:"não existe banca com este id"})
            }
            res.status(200).json(board)
         } catch (error) {
            res.status(500).json(error.message)
         }
      
    }

    static async getBoardByName(req,res){
        const{name} = req.body
        try {
            const board = await database.Appraisal_boards.findOne({where:{name:name}})
            if(!board){
                res.status(404).json({mensagem:"não existe banca com este nome"})
            }
            res.status(200).json(board)
         } catch (error) {
            res.status(500).json(error.message)
         }
    }



    
}
module.exports = AppraisalController