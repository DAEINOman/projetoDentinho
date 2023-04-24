'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Dental extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Dental.belongsTo(models.Accounts, {foreignKey: "account_id"})
    }
  }
  Dental.init({
    name: DataTypes.STRING,
    quantity_dental: DataTypes.INTEGER,
    quantity_life: DataTypes.INTEGER,
    quantity_energy: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Dental',
  });
  return Dental;
};