const db = require("../config/db");

class CityPoint {
  constructor() {}


  static findAll() {
    let sql = `
      SELECT * FROM citypoints;
    `;

    return db.execute(sql);
  }
}

module.exports = CityPoint;
