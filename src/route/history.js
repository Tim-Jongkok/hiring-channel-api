const express = require("express");
const historyController = require("../controller/history");
const checkToken = require("../helpers/middleware/checkToken");

const historyRouter = express.Router();

historyRouter.get("/:id", historyController.showHistoryById);
historyRouter.post("/", historyController.addToHistory);

module.exports = historyRouter;