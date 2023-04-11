import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutor_me/screens/premiumAccount.dart';
import 'package:tutor_me/screens/signIn.dart';
import 'package:tutor_me/services/authentication_service.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _signUpFormkey = GlobalKey<FormState>();
  final Authentication_service auth_service = Authentication_service();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _levelController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _levelController.dispose();
    _emailController.dispose();
    _phonenumberController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
  }

  void signUp() {
    auth_service.SignUp(
        context: context,
        username: _usernameController.text,
        level: _levelController.text,
        email: _emailController.text,
        phonenumber: _phonenumberController.text,
        password: _passwordConfirmController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
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
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                              (route) => false);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.white)),
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
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
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
                ),
              ),
              SizedBox(height: 50),
              Form(
                key: _signUpFormkey,
                child: Column(
                  children: [
                    Container(
                      width: 278,
                      child: TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your UserName';
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
                          hintText: 'USER NAME',
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
                      height: 20,
                    ),
                    Container(
                      width: 278,
                      child: TextFormField(
                        controller: _levelController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Level';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 35,
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'LEVEL',
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
                      height: 20,
                    ),
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
                      height: 20,
                    ),
                    Container(
                      width: 278,
                      child: TextFormField(
                        controller: _phonenumberController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Phone Number';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
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
                          hintText: 'PHONE NUMBER',
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
                      height: 20,
                    ),
                    Container(
                      width: 278,
                      child: TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your UserPassword';
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
                          hintText: 'USER PASSWORD',
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
                      height: 20,
                    ),
                    Container(
                      width: 278,
                      child: TextFormField(
                        controller: _passwordConfirmController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please reenter your UserPassword';
                          }
                          if (value != _passwordController.text) {
                            return 'password donot match';
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
                          hintText: 'RE-TYPE PASSWORD',
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
                      height: 50,
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
                          if (_signUpFormkey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.

                            signUp();
                            //CircularProgressIndicator();

                            /*builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
        
        ) */
                          }
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PremiumAccount()),
                              (route) => false);
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
