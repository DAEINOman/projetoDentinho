'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Alternatives extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
     Alternatives.belongsTo(models.Questions, {foreignKey: "question_id"})
    }
  }
  Alternatives.init({
    text: DataTypes.STRING,
    is_correct: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Alternatives',
    tableName: 'alternatives'
  });
  return Alternatives;
};