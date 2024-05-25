const mongoose = require('mongoose');
const { isEmail } = require('validator');

const MembersSchema = new mongoose.Schema({
    firstname: {
        type: String,
        required: true
    },
    lastname: {
        type: String,
        required: true
    },
    middlename: {
        type: String,
        required: true
    },
    email:{
        type:String,
        unique: true,
        required: [false, 'Please enter an email'],
        lowercase: true,
        validate: [isEmail, 'please enter a valid email']
    },
    phone: {
        type: String,
        required: [true, 'please enter a phone number'],
        validate: {validator: function(v) {
            // Regex to validate a 10 digit phone number
            return /\d{10}/.test(v);
          },
          message: props => `${props.value} is not a valid phone number!`
        }
    },
    age: {type: Number},
    Gender: {type: String},
    emergencyname: {
        type: String,
        required: true
    },
    emergencyphone: {
        type: String,
        required: [true, 'please enter a phone number'],
        validate: {validator: function(v) {
            // Regex to validate a 10 digit phone number
            return /\d{10}/.test(v);
          },
          message: props => `${props.value} is not a valid phone number!`
        }
    },
    startdate: {
        type: Date,
        required: true
    },
    planid: {
        type: String,
        required: true
    },
    planname: {
        type: String,
        required: true
    },
    planduration: {
        type: Number,
        required: true
    },
    expirationdate: {
        type: Date,
        require: true
    },
    remainingdays: {
        type: Number,
        required: true
    }
});

const Members = mongoose.model('members', MembersSchema);

module.exports = Members;
