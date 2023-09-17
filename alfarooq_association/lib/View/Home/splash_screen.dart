import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Auth/login_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
            // duration: 3000,
            splash: Lottie.asset("assets/animation/splash.json"),
            splashIconSize: Sizes.width(context)*0.5,
            splashTransition: SplashTransition.fadeTransition,
             screenFunction: () async{
               return  LoginScreen();
             },
            );
  }
}