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
exports.getMember = (req, res) => {
  res.status(200).json({ message: `Fetching member with ID ${req.params.id}` });
};

exports.updateMember = (req, res) => {
  res.status(200).json({ message: `Updating member with ID ${req.params.id}` });
};

exports.deleteMember = (req, res) => {
  res.status(200).json({ message: `Deleting member with ID ${req.params.id}` });
};
