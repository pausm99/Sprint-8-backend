const db = require("../config/db");

class Reservation {
  constructor(guest_name, email, check_in, check_out, hotel_id, phone_number) {
    this.guest_name = guest_name;
    this.email = email;
    this.check_in = check_in;
    this.check_out = check_out;
    this.hotel_id = hotel_id;
    this.phone_number = phone_number;
  }

  save() {
    let sql = `
    INSERT INTO reservations (guest_name, email, check_in, check_out, hotel_id, phone_number)
    VALUES (?, ?, ?, ?, ?, ?)
    `;

    return db.execute(sql, [
      this.guest_name,
      this.email,
      this.check_in,
      this.check_out,
      this.hotel_id,
      this.phone_number
    ]);
  }

  static findAll() {
    let sql = `
      SELECT reservations.id, reservations.guest_name, reservations.email, reservations.check_in, reservations.check_out, reservations.phone_number, hotels.hotel_name
      FROM reservations
      JOIN hotels ON reservations.hotel_id = hotels.id;
    `;

    return db.execute(sql);
  }

  static findById(id) {
    let sql = `
      SELECT reservations.id, reservations.guest_name, reservations.email, reservations.check_in, reservations.check_out, reservations.phone_number, hotels.hotel_name
      FROM reservations
      JOIN hotels ON reservations.hotel_id = hotels.id
      WHERE reservations.id = ?;
    `;

    return db.execute(sql, [id]);
  }

  static deleteById(id) {
    let sql = "DELETE FROM reservations WHERE id = ?;";

    return db.execute(sql, [id]);
  }
}

module.exports = Reservation;
