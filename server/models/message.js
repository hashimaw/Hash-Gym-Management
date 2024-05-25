const mongoose = require('mongoose');

const MessageSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    message: {
        type: String,
        required: true
    },
    timeofDelivery: {
        type: String,
        required: true
    },
});

const Message = mongoose.model('Message', MessageSchema);

module.exports = Message;
