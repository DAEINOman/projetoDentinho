'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Appraisal_boards extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Appraisal_boards.hasMany(models.Questions, {foreignKey: "appraisal_board_id"})
    }
  }
  Appraisal_boards.init({
    name: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Appraisal_boards',
  });
  return Appraisal_boards;
};