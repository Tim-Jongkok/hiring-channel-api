const database = require("../config/config");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

const authModel = {
  register: (body) => {
    return new Promise((resolve, reject) => {
      bcrypt.genSalt(10, (err, salt) => {
        if (!err) {
          const { password } = body;
          bcrypt.hash(password, salt, (error, hashedPassword) => {
            if (!error) {
              const newBody = { ...body, password: hashedPassword };
              const qs = "SELECT email FROM users WHERE email = ?";
              const newQs = "INSERT INTO users SET ?";
              database.query(qs, newBody.email, (secondErr, data) => {
                if (data.length) {
                  reject({ msg: "User Already Exist" });
                }
                if (!data.length) {
                  database.query(newQs, newBody, (newErr, result) => {
                    if (!newErr) {
                      resolve({msg: "Register Success"});
                    } else {
                      reject(newErr);
                    }
                  });
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
