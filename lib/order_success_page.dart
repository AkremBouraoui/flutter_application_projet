
import 'package:flutter/material.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263124),

      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,  
            size: 28,
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 90),
            const SizedBox(height: 20),

            const Text(
              "ORDER CONFIRMED!",
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 30,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              "Thank you for your purchase.",
              style: TextStyle(
                fontFamily: "InstrumentSans",
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}