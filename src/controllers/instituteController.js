const database = require('../models')


class InstituteController {

    
    static async getAllInstitutes(req,res) {
     try {
        const Institutes = await database.Institutes.findAll()
        res.status(200).json(Institutes)
     } catch (error) {
        res.status(500).json(error.message)
     }
    }
    static async getAllInstitutesByUf(req,res) {
        const{uf} = req.params
        try {
            const Institutes = await database.Institutes.findOne({
                where:{uf:uf}
            });
            res.status(200).json(Institutes);
        } catch (error) {
            res.status(500).json(error.message);
        }
       }
    static  async getInstitutesById(req,res){
        const{id} = req.params
        try {
            const instituto = await database.Institutes.findOne({where:{id:Number(id)}})
            if(!instituto){
                res.status(404).json({mensagem:"não existe instituto com este id"})
            }
            res.status(200).json(instituto)
         } catch (error) {
            res.status(500).json(error.message)
         }
    }

    static async getInstitutesByName(req,res){
        const{name} = req.body
        try {
            const instituto = await database.Institutes.findOne({where:{name:name}})
            if(!instituto){
                res.status(404).json({mensagem:"não existe instituto com este nome"})
            }
            res.status(200).json(instituto)
         } catch (error) {
            res.status(500).json(error.message)
         }
    }



    
}
module.exports = InstituteController