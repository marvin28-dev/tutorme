import 'package:flutter/material.dart';
import 'package:tutor_me/screens/homePage.dart';
import 'package:tutor_me/screens/signup.dart';
import 'package:tutor_me/services/authentication_service.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _signInFormkey = GlobalKey<FormState>();
  final Authentication_service auth_service = Authentication_service();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signIn() {
    auth_service.SignIn(
        context: context,
        email: _emailController.text,
        password: _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 40),
              child: Row(
                children: [
                  Container(
                    height: 39,
                    width: 103,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              Colors.blueAccent.shade200),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.blueAccent.shade200),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Colors.blueAccent.shade200)),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 39,
                    width: 103,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.white)),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Form(
                key: _signInFormkey,
                child: Column(
                  children: [
                    Container(
                      width: 278,
                      child: TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email address';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'EMAIL',
                          hintStyle: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(5, 10),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 278,
                      child: TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your passwrod';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                obscureText:
                                false;
                              },
                              icon: Icon(Icons.visibility)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'PASSWORD',
                          hintStyle: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(5, 10),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.blueAccent.shade200,
                                fontSize: 18),
                          ),
                        )),
                    SizedBox(
                      height: 250,
                    ),
                    Container(
                      height: 55,
                      width: 278,
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
                          if (_signInFormkey.currentState!.validate()) {
                            signIn();
                          }
                        },
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                                Colors.blueAccent.shade200),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.blueAccent.shade200),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.blueAccent.shade200)),
                            )),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
