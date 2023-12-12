const db = require("../config/db");

class Reservation {
  constructor(guest_name, email, check_in_datetime, check_out_datetime, hotel_id, phone_number) {
    this.guest_name = guest_name;
    this.email = email;
    this.check_in_datetime = check_in_datetime;
    this.check_out_datetime = check_out_datetime;
    this.hotel_id = hotel_id;
    this.phone_number = phone_number;
  }

  save() {
    let sql = `
    INSERT INTO reservations (guest_name, email, check_in_datetime, check_out_datetime, hotel_id, phone_number)
    VALUES (
      '${this.guest_name}',
      '${this.email}',
      '${this.check_in_datetime}',
      '${this.check_out_datetime}',
      '${this.hotel_id}',
      '${this.phone_number}'
    )
    `;

    return db.execute(sql);
  }

  static findAll() {
    let sql = "SELECT * FROM reservations;";

    return db.execute(sql);
  }

  static findById(id) {
    let sql = `SELECT * FROM reservations WHERE id = ${id};`;

    return db.execute(sql);
  }
}

module.exports = Reservation;