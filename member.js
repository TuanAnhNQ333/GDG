// models/Member.js
const mongoose = require("mongoose");
const memberSchema = new mongoose.Schema({
  name: String,
  email: { type: String, unique: true },
  password: String,
  role: { type: String, enum: ["member", "manager"], default: "member" },
  team: String,
});

module.exports = mongoose.model("Member", memberSchema);
