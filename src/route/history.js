/** @format */

const express = require("express");
const usersRouter = express.Router();

const historyController = require("../controller/users");

usersRouter.get("/history", historyController);
usersRouter.post("/history", historyController);

module.exports = historyRouter;
