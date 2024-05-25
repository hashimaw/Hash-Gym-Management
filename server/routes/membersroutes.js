const express = require('express');
const membersRouter = express.Router();
const Member = require('../models/members');


function convertToDate(dateString) {
  var parts = dateString.split("-");
  var converteddate = new Date(Date.UTC(parts[2], parts[1] - 1, parts[0]));
  return converteddate;
}


function addMonths(date, months) {
  date.setMonth(date.getMonth() + months);
  return date;
}


function calculateRemainingDays(expirationDate) {
  var currentDate = new Date();
  var remainingTime = expirationDate - currentDate;
  var remainingDays = Math.ceil(remainingTime / (1000 * 60 * 60 * 24));
  return remainingDays;
}

membersRouter.get('/getmember', async (req, res) => {
    await Member.find({}, {__v: 0 })
    .then((result) => {
        res.json(result)
    }).catch((err) => {
        res.status(400).json( err );
        console.log(err);
    })
})

membersRouter.post('/addmember', async (req, res) => {
    const member = new Member();
    member.startdate = convertToDate(req.body.startdate);
    console.log(member.startdate);
    member.firstname = req.body.firstname;
    member.lastname = req.body.lastname;
    member.middlename = req.body.middlename;
    member.email = req.body.email;
    member.phone = req.body.phone;
    member.age = req.body.age;
    member.gender = req.body.gender;
    member.emergencyname = req.body.emergencyname;
    member.emergencyphone = req.body.emergencyphone;
    member.planid = req.body.planid;
    member.planname = req.body.planname;
    member.planduration = req.body.planduration;
    member.expirationdate = addMonths(convertToDate(req.body.startdate), member.planduration);
    member.remainingdays = calculateRemainingDays(member.expirationdate);
    await member.save()
    .then((result) => {
        res.json(result);
    })
    .catch((err) => {
        console.log(err);
    })
})


membersRouter.post('/renewplan', async (req, res) => {
  var updatePlan = {
    startdate: convertToDate(req.body.startdate),
    planname: req.body.planname,
    planid: req.body.planid,
    planduration: req.body.planduration,
    expirationdate: addMonths(convertToDate(req.body.startdate), req.body.planduration),
    remainingdays: calculateRemainingDays(addMonths(convertToDate(req.body.startdate), req.body.planduration))
  }
  await Member.findByIdAndUpdate(req.body.id,
    {
      $set: updatePlan
    }, { new: true } )
  .then((result) => {
      res.json(result);
      console.log(result);
  })
  .catch((err) => {
      console.log(err);
  })
})

membersRouter.post('/deletemember', async (req, res) => {
  console.log('request made successfully to delete this user id ' + req.body.id);
  await Member.findByIdAndDelete(req.body.id)
      .then(() => {
          res.send('deletion successfully');
          console.log('done!')
      })
      .catch((err) => {
          console.log(err);
      });
})



module.exports = membersRouter;