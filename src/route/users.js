/** @format */

const express = require("express");
const usersRouter = express.Router();

const usersController = require("../controller/users");

const uploadImage = require("../helpers/middleware/fileUpload");


usersRouter.get("/", usersController.showAllUser);
usersRouter.get("/user/:id", usersController.showDetailUser);

usersRouter.patch(
  "/user/:id", 
  uploadImage.singleUpload,
  usersController.updateUser
);
usersRouter.delete("/user/:id", usersController.deleteUser);

module.exports = usersRouter;
