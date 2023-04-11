import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_me/constants/error_handler.dart';
import 'package:tutor_me/constants/global_variables.dart';
import 'package:tutor_me/constants/utils.dart';
import 'package:tutor_me/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_me/provider/user_provider.dart';
import 'package:tutor_me/screens/homePage.dart';
import 'package:tutor_me/screens/premiumAccount.dart';

class Authentication_service {
  void SignUp({
    required BuildContext context,
    required String username,
    required String level,
    required String email,
    required String phonenumber,
    required String password,
  }) async {
    try {
      User user = User(
          id: '',
          username: username,
          level: level,
          email: email,
          phonenumber: phonenumber,
          password: password,
          token: '',
          type: '');
      http.Response res = await http.post(Uri.parse('$uri/tutorMe/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          });
      httpErrorHandler(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            await prefs.setString(
                'x-auth-token', jsonDecode(res.body)['token']);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => PremiumAccount()),
                (route) => false);
          });
    } catch (e) {
      ShowSnackbar(context, e.toString());
    }
  }

  void SignIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(Uri.parse('$uri/tutorMe/api/signin'),
          body: jsonEncode({'email': email, 'password': password}),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          });
      //print(res.body);
      httpErrorHandler(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            await prefs.setString(
                'x-auth-token', jsonDecode(res.body)['token']);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                (route) => false);
          });
    } catch (e) {
      ShowSnackbar(context, e.toString());
    }
  }
}
