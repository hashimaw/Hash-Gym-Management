const mongoose = require('mongoose');

const MembershipPlanSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    price: {
        type: Number,
        required: true
    },
    benefits: {
        type: String,
        required: true
    },
    validityPeriod: {
        type: Number,
        required: true
    }
});

const MembershipPlan = mongoose.model('MembershipPlan', MembershipPlanSchema);

module.exports = MembershipPlan;
