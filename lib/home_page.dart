import 'package:flutter/material.dart';
import 'dashboard_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263124),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: SizedBox(
                height: 500,
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment(0, 1),
                  child: Image.asset('assets/images/home.png'),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ====== WELCOME ======
            const Text(
              "WELCOME",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

           
            const Text(
              "One Spirit, One Voice",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

           
            buildTextField("Username"),

            const SizedBox(height: 20),

            buildTextField("Password", obscure: true),

            const SizedBox(height: 30),

            
           GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DashboardPage()),
                );
            },
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "IrishGrover",
                decoration: TextDecoration.underline,
              ),
            ),
          ),

            const SizedBox(height: 20),

            
            const Text(
              "New user ? Sign up\nForget Password ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "InstrumentSans",
                fontSize: 18,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}


Widget buildTextField(String hint, {bool obscure = false}) {
  return Container(
    width: 370,
    height: 62,
    decoration: BoxDecoration(
      color: const Color(0xFFD9D9D9),
      borderRadius: BorderRadius.circular(40),
    ),
    child: TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontFamily: "InstrumentSans",
          fontSize: 24,
          color: Colors.black54,
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
      ),
    ),
  );
}