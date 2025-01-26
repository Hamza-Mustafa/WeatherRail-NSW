import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF80E0B1),
      // Light green background
      body:
      GestureDetector(
        onTap: () {
      Navigator.pushNamed(context, '/onboarding1');

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/logo.png', // Replace with your actual asset path
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 20),
            const Text(
              '',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );},)
    );
  }
}