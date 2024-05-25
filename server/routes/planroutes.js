const express = require('express');
const planRouter = express.Router();
const MembershipPlan = require('../models/membershipPlans');

planRouter.get('/getplans', async (req, res) => {
    await MembershipPlan.find({}, {__v: 0 })
    .then((result) => {
        res.json(result)
    }).catch((err) => {
        res.status(400).json( err );
        console.log(err);
    })
})


planRouter.post('/addplan', async (req, res) => {
    const plan = new MembershipPlan(req.body)
    await plan.save()
    .then((result) => {
        res.json(result);
    })
    .catch((err) => {
        console.log(err);
    })
})


planRouter.post('/updateplan', async (req, res) => {
    await MembershipPlan.findByIdAndUpdate(req.body.id, req.body, { new: true } )
    .then((result) => {
        res.json(result);
        console.log(result);
    })
    .catch((err) => {
        console.log(err);
    })
})

planRouter.post('/delete', async (req, res) => {
    console.log('request made successfully to delete this user id ' + req.body.id);
    await MembershipPlan.findByIdAndDelete(req.body.id)
        .then(() => {
            res.send('deletion successfully');
            console.log('done!')
        })
        .catch((err) => {
            console.log(err);
        });
})

module.exports = planRouter;