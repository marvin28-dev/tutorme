import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_me/provider/user_provider.dart';
import 'package:tutor_me/screens/splashScreen.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.blueAccent.shade200);
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
