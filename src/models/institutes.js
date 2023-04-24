'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Institutes extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Institutes.hasMany(models.Questions, {foreignKey: "institution_id"})
    }
  }
  Institutes.init({
    name: DataTypes.STRING,
    uf: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Institutes',
  });
  return Institutes;
};