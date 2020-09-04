/** @format */

const usersModel = require("../model/users");
const formResponse = require("../helpers/form/formResponse");

const usersController = {
  showAllUser: (req, res) => {
    usersModel
      .showAllUser(req.query)
      .then((data) => {
        if (data.length !== 0) {
          formResponse.pagination(req, res, data);
        } else {
          res.json({
            response: `Sorry, ${req.query.search} is not found`,
          });
        }
      })
      .catch((err) => {
        formResponse.error(res, err);
      });
  },
  showDetailUser: (req, res) => {
    usersModel
      .showDetailUser(req.params.id)
      .then((data) => {
        formResponse.success(res, data);
      })
      .catch((err) => {
        formResponse.error(res, err);
      });
  },
  addNewUser: (req, res) => {
    usersModel
      .addNewUser(req.body)
      .then((data) => {
        formResponse.success(res, data);
      })
      .catch((err) => {
        console.log(err);
        formResponse.error(res, err);
      });
  },
  updateUser: (req, res) => {
    usersModel
      .updateUser(req.params.id, req.body)
      .then((data) => {
        if (data.affectedRows !== 0) {
          const responData = {
            ...req.body,
          };
          formResponse.success(res, data);
        }
      })
      .catch((err) => {
        console.log(err);
        formResponse.error(res, err);
      });
  },
  deleteUser: (req, res) => {
    usersModel
      .deleteUser(req.params.id)
      .then((data) => {
        const deleteRespon = {
          msg: `id ${req.params.id} was sucessfully deleted`,
        };
        formResponse.success(res, deleteRespon);
      })
      .catch((err) => {
        console.log(err);
        formResponse.error(res, err);
      });
  },
};

module.exports = usersController;
