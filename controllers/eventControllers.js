const Event = require("../models/event.js");

exports.getAllEvents = async (req, res, next) => {
  try {
    const [events, _] = await Event.findAll();

    res.status(200).json(events);
  } catch (error) {
    next(error);
  }
};

exports.createNewEvent = async (req, res, next) => {
  try {
    let { title, start, end, color } = req.body;
    let event = new Event(title, start, end, color);

    const eventCreated = await event.save();

    res.status(201).json(eventCreated);
  } catch (error) {
    next(error);
  }
};

exports.getEventById = async (req, res, next) => {
  try {
    let eventId = req.params.id;

    let [event, _] = await Event.findById(eventId);

    res.status(200).json(event[0]);
  } catch (error) {
    next(error);
  }
};

exports.deleteEventById = async (req, res, next) => {
  try {
    let eventId = req.params.id;

    await Event.deleteById(eventId);

    res.status(200).json({ message: "Event deleted" })
  } catch (error) {
    next(error);
  }
}

exports.updateEventById = async (req, res, next) => {
  try {
    let event = req.body;
    let id = req.params.id;

    await Event.update(event, id);

    res.status(200).json({ message: "Event updated" })
  } catch (error) {
    next(error);
  }
}