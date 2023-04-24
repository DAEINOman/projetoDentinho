'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Disciplines extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Disciplines.hasMany(models.Journeys, {foreignKey: "discipline_id"})
      Disciplines.hasMany(models.Questions, {foreignKey: "discipline_id"})
    }
  }
  Disciplines.init({
    name: DataTypes.STRING,
    createdAt: DataTypes.DATE,
    deletedAt: DataTypes.DATE,
    image: DataTypes.STRING,
    order: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Disciplines',
  });
  return Disciplines;
};