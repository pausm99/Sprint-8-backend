const CityPoint = require("../models/citypoint.js");

exports.getAllCityPoints = async (req, res, next) => {
  try {
    const [citypoints, _] = await CityPoint.findAll();

    res.status(200).json(citypoints);
  } catch (error) {
    next(error);
  }
};
