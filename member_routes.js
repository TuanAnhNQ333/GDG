// routes/memberRoutes.js
const express = require("express");
const router = express.Router();
const { getMember, updateMember, deleteMember } = require("../controllers/memberController");
const auth = require("../middleware/auth");

router.get("/:id", auth, getMember);
router.put("/:id", auth, updateMember);
router.delete("/:id", auth, deleteMember);

module.exports = router;
