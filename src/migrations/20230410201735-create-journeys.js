'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Journeys', {
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
      level: {
        type: Sequelize.INTEGER
      },
      points: {
        type: Sequelize.INTEGER
      },
      discipline_id:{
        allowNull: false,
        type: Sequelize.INTEGER,
        references: { model: 'Disciplines', key:'id'}
      },
      x_ray_enabled: {
        type: Sequelize.BOOLEAN
      },
      is_infected: {
        type: Sequelize.BOOLEAN
      },
      full_journey: {
        type: Sequelize.BOOLEAN
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
      last_activity_at: {
        type: Sequelize.DATE
      },
      completed_at: {
        type: Sequelize.DATE
      },
      infected_at: {
        type: Sequelize.DATE
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
    await queryInterface.dropTable('Journeys');
  }
};