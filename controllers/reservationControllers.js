const Reservation = require("../models/reservation");

exports.getAllReservations = async (req, res, next) => {
  try {
    const [reservations, _] = await Reservation.findAll();

    res.status(200).json(reservations);
  } catch (error) {
    next(error);
  }
};

exports.createNewReservation = async (req, res, next) => {
  try {
    let { guest_name, email, check_in, check_out, hotel_id, phone_number } = req.body;
    let reservation = new Reservation(guest_name, email, check_in, check_out, hotel_id, phone_number);

    const reservationCreated = await reservation.save();

    res.status(201).json(reservationCreated);
  } catch (error) {
    next(error);
  }
};

exports.getReservationById = async (req, res, next) => {
  try {
    let reservationId = req.params.id;

    let [reservation, _] = await Reservation.findById(reservationId);

    res.status(200).json(reservation[0]);
  } catch (error) {
    next(error);
  }
};

exports.deleteReservationById = async (req, res, next) => {
  try {
    let reservationId = req.params.id;

    await Reservation.deleteById(reservationId);

    res.status(200).json({ message: "Reservation deleted" })
  } catch (error) {
    next(error);
  }
}

exports.updateReservation = async (req, res, next) => {
  try {
    let reservation = req.body;
    let id = req.params.id;

    await Reservation.update(reservation, id);

    res.status(200).json({ message: "Reservation updated" })
  } catch (error) {
    next(error);
  }
}