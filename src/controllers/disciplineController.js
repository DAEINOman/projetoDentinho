const database = require('../models')


class DisciplineController {

    
    static async getAllDiciplines(req,res) {
     try {
        const Diciplines = await database.Disciplines.findAll()
        res.status(200).json(Diciplines)
     } catch (error) {
        res.status(500).json(error.message)
     }
    }
    static async getAllDiciplinesInOrder(req,res) {
        try {
            const Diciplines = await database.Disciplines.findAll({
                order: [
                    ['order', 'ASC']
                ]
            });
            res.status(200).json(Diciplines);
        } catch (error) {
            res.status(500).json(error.message);
        }
       }
    static  async getDiciplinesById(req,res){
        const{id} = req.params
        try {
            const board = await database.Disciplines.findOne({where:{id:Number(id)}})
            if(!board){
                res.status(404).json({mensagem:"não existe banca com este id"})
            }
            res.status(200).json(board)
         } catch (error) {
            res.status(500).json(error.message)
         }
    }

    static async getDiciplinesByName(req,res){
        const{name} = req.body
        try {
            const board = await database.Disciplines.findOne({where:{name:name}})
            if(!board){
                res.status(404).json({mensagem:"não existe banca com este nome"})
            }
            res.status(200).json(board)
         } catch (error) {
            res.status(500).json(error.message)
         }
    }



    
}
module.exports = DisciplineController