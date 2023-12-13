const express = require("express");
const hotelControllers = require("../controllers/hotelControllers");
const router = express.Router();

// @route GET && POST - /hotels/
router
  .route("/")
  .get(hotelControllers.getAllHotels)

module.exports = router;