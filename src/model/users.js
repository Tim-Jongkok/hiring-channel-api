/** @format */

const connection = require("../config/config");

const selectQuery = `SELECT users.id, users.first_name, users.last_name, users.corporate_name, type.type_name, users.image, users.email, users.is_open, users_detail.description, users_detail.description, users_detail.field, users_detail.skill, users_detail.location, users_detail.rating, users_detail.total_project FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id`;

const usersModel = {
  showAllUser: (query) => {
    const type_name = query.type_name;
    let queryStr = "";
    if (
      query.search === undefined ||
      query.sort_by === undefined ||
      query.order === undefined
    ) {
      const offset = (Number(query.page) - 1) * Number(query.limit);
      queryStr = `${selectQuery} WHERE type.type_name = ? LIMIT ${query.limit} OFFSET ${offset}`;
    } else {
      const offset = (Number(query.page) - 1) * Number(query.limit);
      queryStr = `${selectQuery} WHERE type.type_name = ? AND (users.first_name LIKE '%${query.search}%' OR users.last_name LIKE '%${query.search}%' OR users.corporate_name LIKE '%${query.search}%' OR users_detail.field LIKE '%${query.search}%' OR users_detail.location LIKE '%${query.search}%' OR users_detail.skill LIKE '%${query.search}%') ORDER BY ${query.sort_by} ${query.order} LIMIT ${query.limit} OFFSET ${offset}`;
    }
    return new Promise((resolve, reject) => {
      connection.query(queryStr, [type_name], (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  showDetailUser: (id) => {
    let queryStr = `${selectQuery} WHERE users.id = ?`;
    return new Promise((resolve, reject) => {
      connection.query(queryStr, [id], (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  updateUser: (id, body) => {
    return new Promise((resolve, reject) => {
      const queryStr = `UPDATE users, users_detail SET ? WHERE users.id = users_detail.user_id AND users.id = ${id}`;
      connection.query(queryStr, body, (err, data) => {
        if (!err) {
          console.log(data);
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  deleteUser: (id) => {
    return new Promise((resolve, reject) => {
      const queryStr = `DELETE users, users_detail FROM users JOIN users_detail ON users.id = users_detail.user_id WHERE users.id = ?`;
      connection.query(queryStr, [id], (err, data) => {
        if (!err) {
          console.log(data);
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
};

module.exports = usersModel;
