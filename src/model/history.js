/** @format */

const connection = require("../config/config");

const historyModel = {
  showHistory: () => {
    const nameQuery = `users.first_name, users.last_name`;
    let queryStr = `SELECT ${nameQuery}, users.corporate_name, history.rating, history.hire_date FROM history JOIN users ON user.id = history.user_id AND history.corporate_id`;
    return new Promise((resolve, reject) => {
      connection.query((err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  addToHistory: () => {
    const nameQuery = `users.first_name, users.last_name`;
    let queryStr = ``;
    return new Promise((resolve, reject) => {
      connection.query((err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
};
module.exports = historyModel;
