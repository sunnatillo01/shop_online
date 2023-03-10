import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop/screen/register_page.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  _initTimer() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const RegisterPage();
      }));
    });
  }

  // ignore: unused_element
  _callRegisterPage() {
    Navigator.pushReplacementNamed(context, RegisterPage.id);
  }

  // ignore: unused_element
  _callHomePage() {
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 102, 204, 1),
                  Color.fromRGBO(51, 153, 255, 0.9),
                ]),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(
                child: Center(
              child: Image.asset("assets/images/img_2.png", width: 180),
            )),
            Image.asset(
              "assets/images/img_4.png",
              width: 120,
            ),
            const SizedBox(
              height: 50,
            ),
          ])),
    );
  }
}
