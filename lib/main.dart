import 'package:flutter/material.dart';
import 'Splashscreen.dart';
import 'OnboardingScreen1.dart';
import 'OnboardingScreen2.dart';
import 'OnboardingScreen3.dart';
import 'Loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherRail NSW',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => Splashscreen(),
        '/onboarding1': (context) => OnboardingScreen1(),
        '/onboarding2': (context) => OnboardingScreen2(),
        '/onboarding3': (context) => OnboardingScreen3(),
        '/loginscreen1': (context) => Loginscreen(),
      },
    );
  }
}
