/** @format */

const historyModel = require("../model/history");
const formResponse = require("../helpers/form/formResponse");

const historyController = {
  showHistoryById: (req, res) => {
    historyModel
      .showHistoryById(req.params.id)
      .then((data) => {
        formResponse.success(res, data);
      })
      .catch((err) => {
        formResponse.error(res, err);
      });
  },
  addToHistory: (req, res) => {
    historyModel
      .addToHistory(req.body)
      .then((data) => {
        const responData = {
          ...req.body,
          // hire_date: moment(Date.now()).format("YYYY-MM-DD"),
        };
        formResponse.success(res, responData);
      })
      .catch((err) => {
        formResponse.error(res, err);
      });
  },
};

module.exports = historyController;
