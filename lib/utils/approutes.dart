

import 'package:flutter/material.dart';
import 'package:vial_wallet/auth/loginpage.dart';
import 'package:vial_wallet/auth/onboarding.dart';
import 'package:vial_wallet/auth/register.dart';
import 'package:vial_wallet/auth/splashscreen.dart';
import 'package:vial_wallet/view/homepage.dart';


class AppRoutes {
  Map<String, Widget Function(BuildContext ctx)> routes =
      <String, WidgetBuilder>{
    "/": (ctx) => const Splashscreen(),
    "/onboarding": (ctx) => const Onboarding(),
    "/home": (ctx) => const HomePage(),
    "/login": (ctx) => const LoginPage(),
    "/register": (ctx) => const Register(),
    // "/Practise": (ctx) => const PracticePage(),
  };
}
