const connection = require("../config/config");
const moment = require("moment");

const historyModel = {
  showHistory: () => {
    const nameQuery = `users.first_name, users.last_name`;
    let qs = `SELECT ${nameQuery}, users.corporate_name, history.rating, history.hire_date FROM history JOIN users ON user.id = history.user_id AND history.corporate_id`;
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
  addToHistory: (body) => {
    let date = moment(Date.now()).format("YYYY-MM-DD");
    const { user_id, corporate_id, rating } = body;
    let qs = `INSERT INTO history SET history.user_id = ?, history.corporate_id = ?, history.rating = ?, history.hire_date = NOW() `;
    return new Promise((resolve, reject) => {
      connection.query(
        qs,
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
