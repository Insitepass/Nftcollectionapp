import 'dart:async';
import 'package:flutter/material.dart';
import 'package:i_dream_of_space/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashscreenState();
  }
}

class SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OnboardingPage(pages: [
                  //#1
                  OnboardingPageModel(
                      title: "Welcome to",
                      description:
                          "A cosmic odessy in art. This collecton showcases ethereal interpretations of space.",
                      bgGif: "lib/assets/images/IrM.gif"),

                  //#2
                  OnboardingPageModel(
                      title: " I dream of space collection",
                      description:
                          "merging imagination and the infinite vastness of the universe, perfect for those who dream of galaxies far, far away.",
                      bgGif: "lib/assets/images/IrM.gif"),

                  //#3
                  OnboardingPageModel(
                      title: "I dream of space collection",
                      description:
                          "This art collection blends surrealism and cosmic beauty, depicting otherworldly visions and galatic dreams.",
                      bgGif: "lib/assets/images/IrM.gif"),
                ]))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                'lib/assets/images/IrM.gif',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child:
                  Image.asset('lib/assets/images/astro_removebg_preview.png'),
            ),
          ],
        ),
      ),
    );
  }
}
