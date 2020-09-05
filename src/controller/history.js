const historyModel = require("../model/history");
const formResponse = require("../helpers/forms/formResponse");

const historyController = {
  showHistory: (_, res) => {
    historyModel
      .showHistory()
      .then((data) => {
        formResponse.success(res, data, 200);
      })
      .catch((err) => {
        formResponse.error(res, err, 500);
      });
  },
  addToHistory: (req, res) => {
    historyModel
      .addToHistory(req.body)
      .then((data) => {
        formResponse.success(res, data, 200);
      })
      .catch((err) => {
        formResponse.error(res, err, 500);
      });
  },
};

module.exports = historyController;