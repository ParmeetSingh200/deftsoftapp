import 'dart:async';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ui/onboarding.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  
    @override
    void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const OnBoardingPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
      height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      width: double.infinity,
      child: Image.asset(
        "assets/images/Splash.png",
        fit: BoxFit.fill
      ),
    ),
    );
  }
}
