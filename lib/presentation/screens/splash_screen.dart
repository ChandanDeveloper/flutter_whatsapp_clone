import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_cloan/presentation/screens/home_screen.dart';
import 'package:flutter_whatsapp_cloan/presentation/screens/registration_screen.dart';
import 'package:flutter_whatsapp_cloan/presentation/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => WelcomeScreen(),
          ),
          (route) => false,);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("WhatsApp Clone",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
