/** @format */

const connection = require("../config/config");

const usersModel = {
  showUser: (page, limit) => {
    const offset = (page - 1) * limit;
    return new Promise((resolve, reject) => {
      const queryStr = `SELECT users.id, users.first_search, users.last_search, users.corporate_search, type.type_search, users.image, users.email, users.is_open, users_detail.description, users_detail.description, users_detail.field, users_detail.skill, users_detail.salary, users_detail.rating, users_detail.total_project FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id LIMIT ? OFFSET ?`;
      connection.query(queryStr, [Number(limit), offset], (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  addNewUser: () => {
    return new Promise((resolve, reject) => {
      const queryStr = ``;
      connection.query(queryStr, (err, data) => {
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
      connection.query(queryStr, [body], (err, data) => {
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
  searchUser: (query) => {
    const page = query.page;
    const limit = query.limit;
    const offset = (page - 1) * limit;
    const search = query.search;
    return new Promise((resolve, reject) => {
      const queryStr = `SELECT users.id, users.first_search, users.last_search, users.corporate_search, type.type_search, users.image, users_detail.description, users_detail.description, users_detail.field, users_detail.skill, users_detail.salary, users_detail.rating, users_detail.total_project FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id WHERE users.first_search LIKE '%${search}%' OR users.last_search LIKE '%${search}%' OR users.corporate_search LIKE '%${search}%' OR users_detail.field LIKE '%${search}%' OR users_detail.salary LIKE '%${search}%' OR users_detail.skill LIKE '%${search}%' LIMIT ? OFFSET ?`;
      connection.query(queryStr, [Number(limit), offset], (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  sortUser: (query) => {
    const page = query.page;
    const limit = query.limit;
    const offset = (page - 1) * limit;
    const order = query.order;
    const by = query.by;
    const type_search = query.type_search;
    return new Promise((resolve, reject) => {
      const queryStr = `SELECT users.id, users.first_search, users.last_search, users.corporate_search, type.type_search, users.image, users_detail.description, users_detail.description, users_detail.field, users_detail.skill, users_detail.salary, users_detail.rating, users_detail.total_project  FROM users JOIN type ON users.type_id = type.type_id JOIN users_detail ON users.id = users_detail.user_id WHERE type.type_search = ? ORDER BY ${by} ${order} LIMIT ? OFFSET ?`;
      connection.query(
        queryStr,
        [type_search, Number(limit), offset],
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

module.exports = usersModel;
