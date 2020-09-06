/** @format */

const connection = require("../config/config");
const moment = require("moment");

const historyModel = {
  showHistoryById: (id) => {
    const nameQuery = `users.first_name, users.last_name`;
    let queryStr = `SELECT CONCAT_WS(' ',users.first_name, users.last_name) AS name, users.corporate_name, history.rating, history.hire_date FROM history JOIN users 
    ON users.id = history.user_id OR users.id = history.corporate_id WHERE history.user_id = ${id} OR history.corporate_id = ${id}`;
    return new Promise((resolve, reject) => {
      connection.query(queryStr, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  addToHistory: (body) => {
    let hire_date = moment(Date.now()).format("YYYY-MM-DD");
    const { user_id, corporate_id, rating } = body;
    let queryStr = `INSERT INTO history SET history.user_id = ?, history.corporate_id = ?, history.rating = ?, history.hire_date = NOW() `;
    return new Promise((resolve, reject) => {
      connection.query(
        queryStr,
        [user_id, corporate_id, rating],
        (err, data) => {
          if (!err) {
            resolve(data);
          } else {
            reject(err);
          }
        }
      );
    });
  },
};
module.exports = historyModel;
