const Reservation = require("../models/reservation");

exports.getAllReservations = async (req, res, next) => {
  try {
    const [reservations, _] = await Reservation.findAll();

    res.status(200).json({ count: reservations.length, reservations });
  } catch (error) {
    next(error);
  }
};

exports.createNewReservation = async (req, res, next) => {
  try {
    let { guest_name, email, check_in_datetime, check_out_datetime, hotel_id, phone_number } = req.body;
    let reservation = new Reservation(guest_name, email, check_in_datetime, check_out_datetime, hotel_id, phone_number);

    reservation = await reservation.save();

    res.status(201).json({ message: "Reservation created" });
  } catch (error) {
    next(error);
  }
};

exports.getReservationById = async (req, res, next) => {
  try {
    let reservationId = req.params.id;

    let [reservation, _] = await Reservation.findById(reservationId);

    res.status(200).json({ reservation: reservation[0] });
  } catch (error) {
    next(error);
  }
};