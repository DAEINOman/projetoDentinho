'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Disciplines', {
      id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
      },
      name: {
        type: Sequelize.STRING(191),
        allowNull: false
      },
      created_at: {
        type: Sequelize.DATE(3),
        allowNull: false,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP(3)')
      },
      deleted_at: {
        type: Sequelize.DATE(3),
        allowNull: true
      },
      image: {
        type: Sequelize.STRING(191),
        allowNull: false
      },
      order: {
        type: Sequelize.INTEGER,
        allowNull: false,
        defaultValue: 0
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Disciplines');
  }
};