/** @format */

const express = require("express");
const historyRouter = express.Router();

const historyController = require("../controller/history");

historyRouter.get("/history/:id", historyController.showHistoryById);
historyRouter.post("/history", historyController.addToHistory);

module.exports = historyRouter;
