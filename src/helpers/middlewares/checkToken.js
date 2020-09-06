const jwt = require("jsonwebtoken");
const _ = require("underscore");
const formResponse = require("../formResponse");

const checkToken = {
  isEngineer: (req, res, next) => {
    const bearerToken = req.header("x-access-token");
    if (_.isEmpty(bearerToken)) {
      formResponse.error(res, "Please Login First", 400);
    }
    try {
      const token = bearerToken.split(" ")[1];
      const decodedToken = jwt.verify(token, process.env.SECRET_KEY);
      if (Number(decodedToken.type_id) === 1) {
        req.decodedToken = decodedToken;
        next();
      } else {
        formResponse.error(res, "Access Denied", 500);
      }
    } catch (e) {
      formResponse.error(res, e, 500);
    }
  },
  isCorporation: (req, res, next) => {
    const bearerToken = req.header("x-access-token");
    if (_.isEmpty(bearerToken)) {
      formResponse.error(res, "Please Login First", 400);
    }
    try {
      const token = bearerToken.split(" ")[1];
      const decodedToken = jwt.verify(token, process.env.SECRET_KEY);
      if (Number(decodedToken.type_id) === 2) {
        req.decodedToken = decodedToken;
        next();
      } else {
        formResponse.error(res, "Access Denied", 500);
      }
    } catch (e) {
      formResponse.error(res, e, 500);
    }
  },
  isAdmin: (req, res, next) => {
    const bearerToken = req.header("x-access-token");
    if (_.isEmpty(bearerToken)) {
      formResponse.error(res, "Please Login First", 400);
    }
    try {
      const token = bearerToken.split(" ")[1];
      const decodedToken = jwt.verify(token, process.env.SECRET_KEY);
      if (Number(decodedToken.type_id) === 3) {
        req.decodedToken = decodedToken;
        next();
      } else {
        formResponse.error(res, "Access Denied", 500);
      }
    } catch (e) {
      formResponse.error(res, e, 500);
    }
  },
};

module.exports = checkToken;
