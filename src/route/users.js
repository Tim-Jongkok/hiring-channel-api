/** @format */

const express = require("express");
const usersRouter = express.Router();

const usersController = require("../controller/users");

const uploadImage = require("../helpers/middleware/fileUpload");
const routeMiddleware = require("../helpers/middleware/routeMiddleware");

usersRouter.get(
  "/",
  routeMiddleware,
  usersController.searchUser,
  usersController.sortUser,
  usersController.showUser
);
usersRouter.post("/");
usersRouter.patch("/:id", usersController.updateUser);
usersRouter.delete("/:id", usersController.deleteUser);

module.exports = usersRouter;
