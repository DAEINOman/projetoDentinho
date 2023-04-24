const { where } = require('sequelize')
const database = require('../models');



class JourneyController {

    static async getJourneyById(req, res) {
        const { account_id } = req.params
        try {
            let journeys = await database.Journeys.findAll({ where: Number(account_id)  });
            
            res.status(200).json(journeys)
        } catch (error) {
            res.status(500).json(error.message)
        }
    }
    static async createJourneyById(req, res) {
        const { account_id, discipline_id } = req.params
        try {
            let validaExistencia = await database.Journeys.findAll({where:{account_id: Number(account_id), discipline_id: Number(discipline_id)}})
            console.log(validaExistencia)
            if(validaExistencia.length > 0){
               return res.status(404).json({mensagem: "ja existe uma jornada desta diciplina para está conta"})
            }
            await database.Journeys.create({
                id:account_id,
                level:0,
                points:0,
                x_ray_enabled:0,
                is_infected:0,
                full_journey:0,
                account_id,
                discipline_id
            })
            
            res.status(200).json({mensagem:"jornada criada com sucesso"})
        } catch (error) {
            res.status(500).json(error.message)
        }
    }
    static async updateJourneyById(req, res) {
        const { account_id, discipline_id } = req.params
        const body = req.body
        try {
            let validaExistencia = await database.Journeys.findAll({where:{account_id: Number(account_id), discipline_id: Number(discipline_id)}})
            if(validaExistencia.length == 0){
                return res.status(404).json({mensagem: "não existe uma jornada desta diciplina para está conta"})
             }
             
             const update = await database.Journeys.update(body,{ where:{account_id: Number(account_id), discipline_id:Number(discipline_id)}})
             
            res.status(200).json({mensagem: "Jornada atualizada com sucesso"})
        } catch (error) {
            res.status(500).json(error.message)
        }
    }
}

module.exports = JourneyController