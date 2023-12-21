const express = require("express");
const graphicControllers = require("../controllers/graphicControllers");
const router = express.Router();

// @route GET && POST - /graphics/
router
  .route("/")
  .get(graphicControllers.getAllGraphics)

module.exports = router;