const express = require('express');
const User = require('../models/user');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken')
const authRouter = express.Router();

//SIGNUP ROUTE
authRouter.post('/tutorMe/api/signup', async(req, res)=>{
    try{
        //collecting data from the body
    const {username, level, email, phonenumber, password} = req.body;
    //check if the user is existing and deny creating of account
    const existingUser = await User.findOne({email});
    if(existingUser){
       return res.status(400).json({msg: 'User with thesame already exists'});
    }
    
    //hashing the password using bcryptjs
    var salt = bcrypt.genSaltSync(10);
    var encryptedPassword = bcrypt.hashSync(password, salt);
    
    //if user is not existing create model
    let user =  new User({
        username, level, email, phonenumber, password: encryptedPassword
    });

    //Saving the data in the database and reassigning the save model as user
    user = await user.save();
    //return the data to the client side
    res.json(user);
    }catch(e){
        res.status(500).json({error : e.message});
    }

})

//Signin route

authRouter.post('/tutorMe/api/signin', async(req, res)=>{
    try{
        const {email, password} = req.body;
        const availableUser = await User.findOne({email});
        if(!availableUser){
            return res.status(400).json({msg: 'User with this email not found'});
        }
        const isMatch = await bcrypt.compare(password, availableUser.password);
        if(!isMatch){
            return res.status(400).json({msg: 'Password is incorrect'});
        }
        const token = jwt.sign({_id: availableUser._id}, "passwordKey");
        res.json({token, ...availableUser._doc});
    }catch(e){
        res.status(500).json({error: e.message});
    }

})
module.exports = authRouter;