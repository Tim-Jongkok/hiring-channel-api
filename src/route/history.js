const express = require("express");
const historyController = require("../Controllers/history");
const checkToken = require("../helpers/middlewares/checkToken");

const historyRouter = express.Router();

historyRouter.get("/history", checkToken.isCorporation, historyController.showHistory);
historyRouter.post("/history", historyController.addToHistory);

module.exports = historyRouter;