const express = require("express");
const reservationControllers = require("../controllers/reservationControllers");
const router = express.Router();

// @route GET && POST - /reservations/
router
  .route("/")
  .get(reservationControllers.getAllReservations)
  .post(reservationControllers.createNewReservation)

router
  .route("/:id")
  .get(reservationControllers.getReservationById)
  .delete(reservationControllers.deleteReservationById)
  .patch(reservationControllers.updateReservation);

module.exports = router;