const database = require("../config/config");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

const authModel = {
  register: (body) => {
    return new Promise((resolve, reject) => {
      bcrypt.genSalt(10, (err, salt) => {
        if (!err) {
          const {
            first_name,
            last_name,
            corporate_name,
            type_id,
            image,
            email,
            is_open,
            password,
            detail,
          } = body;
          bcrypt.hash(password, salt, (error, hashedPassword) => {
            if (!error) {
              const newBody = { ...body, password: hashedPassword };
              const qs = "SELECT email FROM users WHERE email = ?";
              // const newQs = "INSERT INTO users SET ?";
              // const startRegis = "START TRANSACTION;";
              // const firstQuery = "INSERT INTO users SET first_name=?, last_name=?, corporate_name=?, type_id=?, image=?, email=?, is_open=?;";
              // const secondQuery =
              //   "INSERT INTO users_detail (user_id, description, skill, field, salary, rating, total_project) VALUES?;";
              // const commitRegis = "COMMIT;";
              const newQs = `START TRANSACTION; INSERT INTO users SET first_name=?, last_name=?, corporate_name=?, type_id=?, image=?, email=?, password=?, is_open=?; INSERT INTO users_detail (user_id, description, skill, field, salary, rating, total_project) VALUES?; COMMIT;`;
              // const firstQs = `START TRANSACTION; INSERT INTO users SET first_name="awan", last_name="nawa", corporate_name="..", type_id=1, image="..", email="ascsa1111", is_open=1; INSERT INTO users_detail (user_id, description, skill, field, salary, rating, total_project) VALUES (20, "sdvsdvvd", "aincai", "aaaaaaa", "fffff", "sssss", "gggggg"); COMMIT;`
              // const allQuery =
              //   startRegis + firstQuery + secondQuery + commitRegis;
              let arrayOfDetail = detail.map((item) => {
                return [
                  item.user_id,
                  item.description,
                  item.skill,
                  item.field,
                  item.salary,
                  item.rating,
                  item.total_project,
                ];
              });
              database.query(qs, newBody.email, (secondErr, data) => {
                if (data.length) {
                  reject({ msg: "User Already Exist" });
                }
                if (!data.length) {
                  database.query(
                    newQs,
                    [
                      newBody.first_name,
                      newBody.last_name,
                      newBody.corporate_name,
                      newBody.type_id,
                      newBody.image,
                      newBody.email,
                      newBody.password,
                      newBody.is_open,
                      arrayOfDetail,
                    ],
                    (newErr, result) => {
                      if (!newErr) {
                        resolve(result);
                      } else {
                        reject(newErr);
                      }
                    }
                  );
                }
              });
            }
          });
        }
      });
    });
  },
  login: (body) => {
    return new Promise((resolve, reject) => {
      const qs =
        "SELECT users.email, users.password, users.type_id FROM users WHERE email=?";
      database.query(qs, body.email, (err, data) => {
        if (!err) {
          if (data.length) {
            bcrypt.compare(body.password, data[0].password, (error, result) => {
              if (!result) {
                reject({ msg: "Wrong Password" });
              } else if (result === true) {
                const { email } = body;
                const { type_id } = data[0];
                const payload = {
                  email,
                  type_id,
                };
                const token = jwt.sign(payload, process.env.SECRET_KEY);
                const msg = "Login Success";
                resolve({ msg, token });
              } else {
                reject(error);
              }
            });
          } else {
            const msg = "User Not Found";
            reject({ msg, err });
          }
        } else {
          reject(err);
        }
      });
    });
  },
};
module.exports = authModel;
