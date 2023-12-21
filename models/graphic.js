const db = require("../config/db");

class Graphic {
  constructor() {}


  static findAll() {
    let sql = `
      SELECT * FROM graphics;
    `;

    return db.execute(sql);
  }
}

module.exports = Graphic;
