// server.js
const mongoose = require('mongoose');
require('dotenv').config();

const connectDB = async () => {
  try {
    const uri = "mongodb+srv://tuananh03032005:tuananh03032005@cluster0.mongodb.net/tuananh?retryWrites=true&w=majority";

    if (!uri) {
      throw new Error('MongoDB URI is not defined');
    }

    await mongoose.connect(uri);
    console.log('Đã kết nối với MongoDB');
  } catch (err) {
    console.error('Lỗi kết nối MongoDB:', err);
  }
};

connectDB();
