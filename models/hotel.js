const db = require("../config/db");

class Hotel {
  constructor() {}


  static findAll() {
    let sql = `
      SELECT * FROM hotels;
    `;

    return db.execute(sql);
  }
}

module.exports = Hotel;
