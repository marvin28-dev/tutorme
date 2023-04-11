const express = require('express');
const mongoose = require('mongoose');
//INIT
const PORT = 3000
const app = express();

//importing from other packages
const authRouter = require('./routes/auth')
const DB = 'mongodb+srv://MarvinEkokobe:kaariskaaris96B&@studyapp.olok2qc.mongodb.net/?retryWrites=true&w=majority'

//middleware
app.use(express.json());
app.use(authRouter);


mongoose.connect(DB).then(()=>{
    console.log('connection Successful');
}).catch((e) => {console.log(e);})
app.listen(PORT, ()=>{
    console.log('Listening on port ' + PORT);
})