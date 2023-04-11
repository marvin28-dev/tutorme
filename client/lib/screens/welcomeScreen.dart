import 'package:flutter/material.dart';
import 'package:tutor_me/main.dart';
import 'package:tutor_me/screens/signIn.dart';
import 'package:tutor_me/screens/signup.dart';
import 'package:tutor_me/screens/testingScreen.dart';

class welcomeScreen extends StatelessWidget {
  // ignore: prefer_const_constructors

  const welcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/welcome.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to Tutor.ME',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Build your education based on your needs',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 170,
              ),
              Text(
                'Connect trying...',
                style: TextStyle(fontSize: 16, fontFamily: 'Bahnschrift'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 51,
                width: 265,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: Offset(0, 7),
                  )
                ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      'SIGNING IN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blueAccent.shade200),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          //side: BorderSide(color: Colors.blueAccent)),
                        )))

                    /*style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent)),
                  )),*/
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 51,
                width: 265,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 7),
                  )
                ]),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    'SIGNING UP',
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.white)),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
