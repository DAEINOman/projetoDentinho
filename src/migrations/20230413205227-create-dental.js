'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Dentals', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      account_id:{
        allowNull: false,
        type: Sequelize.INTEGER,
        references: { model: 'Accounts', key:'id'}
      },
      name: {
        type: Sequelize.STRING
      },
      quantity_dental: {
        type: Sequelize.INTEGER
      },
      quantity_life: {
        type: Sequelize.INTEGER
      },
      quantity_energy: {
        type: Sequelize.INTEGER
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Dentals');
  }
};