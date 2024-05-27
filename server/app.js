const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const cookieParser = require('cookie-parser');
const Users = require('./models/users');
const Members = require('./models/members');
const cron = require('node-cron');

//routes
const planRoutes = require('./routes/planroutes');
const messageRoutes = require('./routes/messageroutes');
const membersRouter = require('./routes/membersroutes');

const app = express();

//connect to mongodb
const uri = "mongodb+srv://hashimabdrehman2:hashdev@gymmanagement.tpvsabv.mongodb.net/HashGym?retryWrites=true&w=majority&appName=GymManagement";
mongoose.connect(uri)
.then((result) => app.listen(3000))
.catch((err) => console.log(err));

//middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


//routes midleware
app.use(planRoutes);
app.use(messageRoutes);
app.use(membersRouter);

//routes
app.get('/getuser', async (req, res) => {
    updateRemainingDays();
    await Users.findOne(req.email)
    .then((result) => {
        res.json({
            firstname: result.firstname, 
            lastname: result.lastname,
            email: result.email,
            role: result.role
        })
    }).catch((err) => {
        console.log(err);
    })
})




// Function to check and update membership remaining days
async function updateRemainingDays() {
    const now = new Date();
    const members = await Members.find();
  
    members.forEach(async (member) => {
      const remainingDays = Math.ceil((member.expirationdate - now) / (1000 * 60 * 60 * 24));
      if (remainingDays < 0) {
        console.log(`Membership for ${member.firstname} has expired.`)``;
        member.remainingdays = 0;
      } else {
        console.log(`Membership for ${member.firstname} is still active. Remaining days: ${remainingDays}`);
        member.remainingdays = remainingDays;
      }
      await member.save();
    });
  }
  
  // Schedule the function to run once a day at 12:00 AM
  cron.schedule('0 0 * * *', updateRemainingDays);

