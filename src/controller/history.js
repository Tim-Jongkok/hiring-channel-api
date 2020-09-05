/** @format */

const historyModel = require("../model/history");
const formResponse = require("../helpers/form/formResponse");

const historyController = {
  showHistory: () => {
    historyModel
      .showHistory()
      .then((data) => {})
      .catch((err) => {});
  },
};

module.exports = historyController;
