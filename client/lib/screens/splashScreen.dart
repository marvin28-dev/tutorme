import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:tutor_me/screens/courses.dart';
import 'package:tutor_me/screens/homePage.dart';
import 'package:tutor_me/screens/particularcourse.dart';
import 'package:tutor_me/screens/particularcourseSubtopic.dart';
import 'package:tutor_me/screens/paymentCode.dart';
import 'package:tutor_me/screens/premiumAccount.dart';
import 'package:tutor_me/screens/signIn.dart';
import 'package:tutor_me/screens/welcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => welcomeScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      body: Container(
        child: Center(
          child: Text(
            'Tutor.Me',
            style: TextStyle(
                fontFamily: 'Basic Comical Regular NC',
                color: Colors.white,
                fontSize: 54.94,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
