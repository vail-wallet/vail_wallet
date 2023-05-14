import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vial_wallet/utils/images.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/onboarding');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(AppImages.splash),
      )
    );
  }
}