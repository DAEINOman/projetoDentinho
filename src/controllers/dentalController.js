const database = require('../models')


class DentalController {
    static async getInfosDental(req, res) {
        const { account_id } = req.params
        try {
            let infosDental = await database.Dental.findAll({ where: Number(account_id) })

            if (!infosDental) {
                return res.status(404).json({ mensagem: "não existe informações de dentes para este usuario" })
            }

            res.status(200).send(infosDental)
        } catch (error) {
            res.status(500).json(error.message)
        }

    }
    static async createInfosDental(req, res) {
        const { account_id } = req.params
        const { name, quantity_dental, quantity_life, quantity_energy } = req.body
        try {
            let infosDental = await database.Dental.findOne({ where: { account_id: Number(account_id) } })

            if (infosDental) {
                return res.status(404).json({ mensagem: "já existe dentes para este usuario" })
            }
            let dataDentals = {
                account_id, name, quantity_dental, quantity_life, quantity_energy
            }
            await database.Dental.create(dataDentals)
            res.status(200).send(infosDental)
        } catch (error) {
            res.status(500).json(error.message)
        }

    }
    static async updateInfosDental(req, res) {
        const { id } = req.params
        const body = req.body
        try {
            let infosDental = await database.Dental.findOne({ where: Number(id) })

            if (!infosDental) {
                return res.status(404).json({ mensagem: "não existe dentes para este usuario" })
            }

            await database.Dental.update(body, {where:{id:Number(id)}})
            res.status(200).send({ mensagem: "infos atualizadas com sucesso" })
        } catch (error) {
            res.status(500).json(error.message)
        }

    }
}
module.exports = DentalController