/** @format */

const responseForm = require("../form/formResponse");
const _ = require("underscore");

const routeMiddleware = (req, res, next) => {
  const requestPath = req.route.path;
  const requestMethod = req.method;
  const queryIsEmpty = _.isEmpty(req.query);
  const queryIsExist = _.includes(req.query);
  const bodyIsEmpty = _.isEmpty(req.body);

  if (requestMethod === "GET" && requestPath === "/") {
    if (requestPath === "/" && queryIsExist) {
      next();
    } else {
      next();
    }
  }
};

module.exports = routeMiddleware;
