// models/Event.js
const mongoose = require("mongoose");
const eventSchema = new mongoose.Schema({
  title: String,
  description: String,
  date: Date,
  createdBy: { type: mongoose.Schema.Types.ObjectId, ref: "Member" },
});

module.exports = mongoose.model("Event", eventSchema);
