import 'package:finance_app/screens/login_page.dart';
import 'package:finance_app/screens/product_screen.dart';
import 'package:finance_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
