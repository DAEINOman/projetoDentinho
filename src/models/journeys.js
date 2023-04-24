'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Journeys extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Journeys.belongsTo(models.Accounts, {foreignKey: "account_id"})
      Journeys.belongsTo(models.Disciplines, {foreignKey: "discipline_id"})
    }
  }
  Journeys.init({
    level: DataTypes.INTEGER,
    points: DataTypes.INTEGER,
    x_ray_enabled: DataTypes.BOOLEAN,
    is_infected: DataTypes.BOOLEAN,
    full_journey: DataTypes.BOOLEAN,
    created_at: DataTypes.DATE,
    updated_at: DataTypes.DATE,
    deleted_at: DataTypes.DATE,
    last_activity_at: DataTypes.DATE,
    completed_at: DataTypes.DATE,
    infected_at: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Journeys',
  });
  return Journeys;
};