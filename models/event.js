const db = require("../config/db");

class Event {
  constructor(title, start, end) {
    this.title = title;
    this.start = start;
    this.end = end;
  }

  async save() {
    let sql = `
      INSERT INTO events (title, start, end)
      VALUES (?, ?, ?)
    `;

    const [result] = await db.execute(sql, [
      this.title,
      this.start,
      this.end,
    ]);

    this.id = result.insertId;

    return this;
  }

  static findAll() {
    let sql = `
      SELECT *
      FROM events
    `;


    return db.execute(sql);
  }

  static findById(id) {
    let sql = `
      SELECT *
      FROM events
      WHERE events.id = ?;
    `;

    return db.execute(sql, [id]);
  }

  static deleteById(id) {
    let sql = "DELETE FROM events WHERE id = ?;";

    return db.execute(sql, [id]);
  }

  static update(event, id) {
    let sql = `
      UPDATE events
      SET title = ?,
          start = ?,
          end = ?,
      WHERE id = ?
    `;

    return db.execute(sql, [
      event.title,
      event.start,
      event.end,
      id
    ]);
  }
}

module.exports = Event;
