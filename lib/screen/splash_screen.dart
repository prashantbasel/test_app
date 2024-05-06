import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_app/screen/grid_view_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String myName = "Prashant";

  @override
  void initState() {
    Timer(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GridViewScreen(nameData: myName,)));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Text(
          'Welcome $myName',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900
          ),
        ),
      ),
    );
  }
}