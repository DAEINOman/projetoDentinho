'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Alternatives', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      text: {
        type: Sequelize.STRING
      },
      is_correct: {
        type: Sequelize.INTEGER
      },
      created_at: {
        allowNull: false,
        type: Sequelize.DATE
      },
      update_at: {
        allowNull: false,
        type: Sequelize.DATE
      },
      delted_at: {
        allowNull: true,
        type: Sequelize.DATE
      },
      question_id:{
        allowNull: false,
        type: Sequelize.INTEGER,
        references: { model: 'Questions', key:'id'}
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Alternatives');
  }
};