'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Questions', {
      id: {
        allowNull: true,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      statement: {
        type: Sequelize.STRING
      },
      discipline_id:{
        allowNull: false,
        type: Sequelize.INTEGER,
        references: { model: 'Disciplines', key:'id'}
      },
      year: {
        type: Sequelize.INTEGER
      },
      appraisal_board_id:{
        allowNull: false,
        type: Sequelize.INTEGER,
        references: { model: 'Appraisal_boards', key:'id'}
      },
      institution_id:{
        allowNull: false,
        type: Sequelize.INTEGER,
        references: { model: 'Institutes', key:'id'}
      },
      difficulty: {
        type: Sequelize.INTEGER
      },
      hit_rate: {
        type: Sequelize.INTEGER
      },
      created_at: {
        type: Sequelize.DATE
      },
      updated_at: {
        type: Sequelize.DATE
      },
      deleted_at: {
        type: Sequelize.DATE
      },
      testId: {
        type: Sequelize.INTEGER
      },
      flag: {
        type: Sequelize.STRING
      },
      img: {
        type: Sequelize.STRING
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Questions');
  }
};