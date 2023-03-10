import 'package:flutter/material.dart';
import 'package:shop/screen/home_page.dart';
import 'package:shop/screen/login_one_page.dart';
import 'package:shop/screen/login_page.dart';
import 'package:shop/screen/profile_page.dart';
import 'package:shop/screen/register_page.dart';
import 'package:shop/screen/sms_page.dart';
import 'package:shop/screen/splash_page.dart';
import 'package:shop/widget/news/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
          ),
          hintStyle: const TextStyle(
            color: Color(0xffBEBEBE),
          ),
        ),
      ),
      home: const SplashPage(),
         routes: {
        SplashPage.id: (context) => const SplashPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        SmsPage.id: (context) => const SmsPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        LoginPage.id: (context) => const LoginPage(),
        LoginOnePage.id: (context) => const LoginOnePage(),
        HomePage.id: (context) => const HomePage(),
        NewsPage.id: (context) => const NewsPage(),
        ProfilePage.id: (context) => const ProfilePage(),
      },
    );
  }
}
