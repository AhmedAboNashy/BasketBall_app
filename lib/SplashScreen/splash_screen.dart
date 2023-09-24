import 'package:bsketball/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToHome();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/images/splash.json');
  }

  goToHome() {
    Future.delayed(
        Duration(seconds: 4),
        () => Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.route_Name, (route) => false));
  }
}
