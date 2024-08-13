import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/app_provider.dart';
import '../../layout/layout_screen.dart';


class SplashScreen extends StatefulWidget {
  static const String routName = "Splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer( Duration(seconds: 5), ()
    {Navigator.pushNamedAndRemoveUntil(
        context, LayoutScreen.routName, (route) => false);});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return
      provider.isDarkMode()?
      Image.asset("assets/images/splash _dark.png"):
      Image.asset("assets/images/splash.png");
  }
}
