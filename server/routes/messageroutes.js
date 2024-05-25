const express = require('express');
const messageRouter = express.Router();
const Message = require('../models/message');


messageRouter.get('/getmessage', async (req, res) => {
    await Message.find({}, {__v: 0 })
    .then((result) => {
        res.json(result)
    }).catch((err) => {
        res.status(400).json( err );
        console.log(err);
    })
})


messageRouter.post('/updatemessage', async (req, res) => {
    console.log('updateMessage api called');
    await Message.findByIdAndUpdate(req.body.id, req.body, { new: true } )
    .then((result) => {
        res.json(result);
        console.log(result);
    })
    .catch((err) => {
        console.log(err);
    })
})


module.exports = messageRouter;