const mongoose = require('mongoose');

//creating the user schema
const UserSchema = mongoose.Schema({
    username: {
        type: String,
        required: true,
        trim: true,

    },
    level: {
        type: String,
        required: true,
        trim : true
    },
    email: {
        type: String,
        required: true,
        trim: true,
        validate: {
            validator: (value) => {
                const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
                return value.match(re);
                
            },
            message: 'Please enter a valid email address.'
        }
    }, 
    phonenumber: {
        required: true,
        trim: true,
        type: String
    }, 
    password:{
        required: true,
        trim: true,
        type: String,
        /*validate: {
            validator: (value) => {
                
                return value.length > 6;
                
            },
            message: 'Please enter a Long Password'
        }*/
    },
    type: {
        type: String,
        default: 'student'
    }

});

//creatung the user pre-model
const User = mongoose.model('User', UserSchema);

module.exports = User;