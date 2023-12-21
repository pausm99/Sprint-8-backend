const Graphic = require("../models/graphic");

exports.getAllGraphics = async (req, res, next) => {
  try {
    const [graphics, _] = await Graphic.findAll();

    res.status(200).json(graphics);
  } catch (error) {
    next(error);
  }
};
