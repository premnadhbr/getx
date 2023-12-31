import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getx_practice/app/view/Landingpage/landingpage.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(
          seconds: 3,
        ),
        () => Navigator.pushReplacement(
              context,
              PageTransition(
                  child: const LandingPage(),
                  type: PageTransitionType.leftToRightWithFade),
            ));
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300.0,
              child: Image.asset('assets/05LfIOxtkYAZ4BIOXwOnZJs-24.webp'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: CircularProgressIndicator(
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
