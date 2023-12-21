require("dotenv").config(); // ALLOWS ENVIRONMENT VARIABLES TO BE SET ON PROCESS.ENV SHOULD BE AT TOP

const express = require("express");
const cors = require('cors');
const app = express();

// Middleware
app.use(express.json(), cors()); // parse json bodies in the request object

// Redirect requests to endpoint starting with /reservations to reservationRoutes.js
app.use("/reservations", require("./routes/reservationRoutes"));

// Redirect requests to endpoint starting with /hotels to hotelRoutes.js
app.use("/hotels", require("./routes/hotelRoutes"));

// Redirect requests to endpoint starting with /events to hotelRoutes.js
app.use("/events", require("./routes/eventRoutes"));

// Redirect requests to endpoint starting with /graphics to hotelRoutes.js
app.use("/graphics", require("./routes/graphicRoutes"));


// Global Error Handler. IMPORTANT function params MUST start with err
app.use((err, req, res, next) => {
  console.log(err.stack);
  console.log(err.name);
  console.log(err.code);

  res.status(500).json({
    message: "ERR:500: Something went rely wrong",
  });
});

// Listen on pc port
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on PORT ${PORT}`));
