'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Questions extends Model {
    static associate(models) {
      Questions.belongsTo(models.Disciplines, {foreignKey: "discipline_id"})
      Questions.belongsTo(models.Appraisal_boards, {foreignKey: "appraisal_board_id"})
      Questions.belongsTo(models.Institutes, {foreignKey: "institution_id"})
      Questions.hasMany(models.Alternatives,
        {
          foreignKey: "question_id",
          

        },

      )
    }
  }
  Questions.init({
    statement: DataTypes.STRING,
    year: DataTypes.INTEGER,
    difficulty: DataTypes.INTEGER,
    hit_rate: DataTypes.INTEGER,
    created_at: DataTypes.DATE,
    updated_at: DataTypes.DATE,
    deleted_at: DataTypes.DATE,
    testId: DataTypes.INTEGER,
    flag: DataTypes.STRING,
    img: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Questions',
    tableName: 'questions' // adicione o nome da tabela existente no seu banco de dados
  });
  return Questions;
};