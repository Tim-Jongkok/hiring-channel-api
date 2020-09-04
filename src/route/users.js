/** @format */

const express = require("express");
const usersRouter = express.Router();

const usersController = require("../controller/users");

const uploadImage = require("../helpers/middleware/fileUpload");
const routeMiddleware = require("../helpers/middleware/routeMiddleware");

usersRouter.get("/", usersController.showAllUser);
usersRouter.get("/:id", usersController.showDetailUser);

usersRouter.patch(
  "/user/:id",
  uploadImage.singleUpload,
  usersController.updateUser
);
usersRouter.delete("/user/:id", usersController.deleteUser);

module.exports = usersRouter;
