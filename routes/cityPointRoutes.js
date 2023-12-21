const express = require("express");
const citypointControllers = require("../controllers/citypointControllers.js");
const router = express.Router();

// @route GET && POST - /citypoints/
router
  .route("/")
  .get(citypointControllers.getAllCityPoints)

module.exports = router;