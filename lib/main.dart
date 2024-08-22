import 'package:flutter/material.dart';
import 'package:signup_page/Sign_up_page.dart';
import 'package:signup_page/home_page.dart';
import 'package:signup_page/login_page.dart';
import 'package:signup_page/welcom_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
