const Hotel = require("../models/hotel");

exports.getAllHotels = async (req, res, next) => {
  try {
    const [hotels, _] = await Hotel.findAll();

    res.status(200).json(hotels);
  } catch (error) {
    next(error);
  }
};
