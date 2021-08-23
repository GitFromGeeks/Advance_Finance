import 'package:advancefinanceplus/screens/add_customer.dart';
import 'package:advancefinanceplus/screens/customer_details.dart';
import 'package:advancefinanceplus/screens/home.dart';
import 'package:advancefinanceplus/screens/login.dart';
import 'package:advancefinanceplus/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Advance Finance",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: SplashScreen(),
      routes: {
        "/home": (context) => Home(),
        "/login": (context) => LoginScreen(),
        "/customer_details": (context) => Customer_details(),
        "/add_customer": (context) => Add_customer(),
      },
    );
  }
}
