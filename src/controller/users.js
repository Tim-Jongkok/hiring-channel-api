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
      .showDetailUser(req.query, req.params.id)
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
          formResponse.success(res, responData);
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
        formResponse.success(res, data);
      })
      .catch((err) => {
        console.log(err);
        formResponse.error(res, err);
      });
  },
  searchUser: (req, res) => {
    usersModel
      .searchUser(req.query)
      .then((data) => {
        if (data.length !== 0) {
          formResponse.pagination(req, res, data);
        } else {
          res.json({
            response: `Sorry, ${req.query.search} not found`,
          });
        }
      })
      .catch((err) => {
        console.log(err);
        formResponse.error(res, err);
      });
  },
  searchAndSortUser: (req, res) => {
    usersModel
      .searchAndSortUser(req.query)
      .then((data) => {
        formResponse.pagination(req, res, data);
      })
      .catch((err) => {
        formResponse.error(res, err);
      });
  },
};

module.exports = usersController;
