// controllers/memberController.js
const getMember = (req, res) => {
    res.send("Get member details");
  };
  
  const updateMember = (req, res) => {
    res.send("Update member details");
  };
  
  const deleteMember = (req, res) => {
    res.send("Delete member");
  };
  
  module.exports = { getMember, updateMember, deleteMember };
  