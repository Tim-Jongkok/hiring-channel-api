/** @format */

const express = require("express");
const router = express.Router();

const usersRouter = require("./users");
const historyRouter = require("./users");

router.use("/", usersRouter);
router.use("/", historyRouter);

module.exports = router;
