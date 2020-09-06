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
              const qs = `START TRANSACTION; INSERT INTO users SET ?; INSERT INTO users_detail SET user_id = LAST_INSERT_ID(); SELECT id, first_name, last_name, corporate_name, type_id, image FROM users WHERE users.email=?; COMMIT;`;
              database.query(qs, [newBody, body.email], (err, data) => {
                if (err) {
                  reject({ msg: "User Already Exist" });
                } else {
                  const { id, type_id } = data[3][0];
                  const { email } = body;
                  const payload = {
                    id,
                    email,
                    type_id,
                  };
                  const token = jwt.sign(payload, process.env.SECRET_KEY);
                  resolve({ data: data[3][0], msg: "Register Success", token });
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
        "SELECT id, first_name, last_name, corporate_name, email, password, type_id, image FROM users WHERE email=?";
      database.query(qs, body.email, (err, data) => {
        if (!err) {
          if (data.length) {
            bcrypt.compare(body.password, data[0].password, (error, result) => {
              if (!result) {
                reject({ msg: "Wrong Password" });
              } else if (result === true) {
                const { id , first_name, last_name, corporate_name, type_id, image } = data[0];
                const { email } = body;
                const payload = {
                  id,
                  email,
                  type_id,
                };
                const token = jwt.sign(payload, process.env.SECRET_KEY);
                const msg = "Login Success";
                resolve({ msg, id, first_name, last_name, corporate_name, type_id, image, token });
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
