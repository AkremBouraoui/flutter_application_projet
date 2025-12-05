import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263124),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Image.asset(
                'assets/images/logo.png',
                width: 180,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "ULTRAS\nGREEN ARMY\nSHOP",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                height: 1.1,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}