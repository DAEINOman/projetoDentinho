'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Accounts extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Accounts.hasMany(models.Journeys,{foreignKey: "account_id",})
      Accounts.hasMany(models.Dental, {foreignKey:"account_id"})
    }
  }
  Accounts.init({
    name: { type: DataTypes.STRING, validate: { funcaoValidadora: function (dado) { if (dado.length < 3) { throw new Error("O campo nome deve ter mais de 3 caracteres") } } } },
    email: { type: DataTypes.STRING, validate: { isEmail: { args: true, msg: "Dados do tipo email inválidos" } } },
    avatar: DataTypes.STRING,
    password: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Accounts',
  });
  return Accounts;
};