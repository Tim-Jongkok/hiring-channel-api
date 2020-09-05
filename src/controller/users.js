/** @format */

const usersModel = require("../model/users");
const formResponse = require("../helpers/form/formResponse");

const usersController = {
  showAllUser: (req, res) => {
    usersModel
      .showAllUser(req.query)
      .then((data) => {
          formResponse.pagination(req, res, data);
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
  updateUser: (req, res) => {
    usersModel
      .updateUser(req.params.id, req.body)
      .then((data) => {
          const responData = {
            ...req.body,
            msg: "Update Sucessfull"
          };
          formResponse.success(res, responData);

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
