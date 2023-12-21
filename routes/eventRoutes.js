const express = require("express");
const eventControllers = require("../controllers/eventControllers.js");
const router = express.Router();

// @route GET && POST - /events/
router
  .route("/")
  .get(eventControllers.getAllEvents)
  .post(eventControllers.createNewEvent)

router
  .route("/:id")
  .get(eventControllers.getEventById)
  .delete(eventControllers.deleteEventById)

module.exports = router;