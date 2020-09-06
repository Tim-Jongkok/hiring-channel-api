/** @format */

const express = require("express");
const router = express.Router();

const usersRouter = require("./users");
const historyRouter = require("./history");
const authRouter = require("./auth");

router.use("/", usersRouter);
router.use("/history", historyRouter);
router.use("/auth", authRouter);

module.exports = router;