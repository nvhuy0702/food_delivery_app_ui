import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F2),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 73,
              width: 73,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"))),
            ),
            Text(
              "Food for\nEveryone",
              style: GoogleFonts.courgette(
                  color: const Color(0xFFC92903), fontSize: 65),
              textAlign: TextAlign.center,
            ),
            Image.asset("assets/images/start_background.png"),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: const Color(0xFFFFD6B8),
              ),
              child: const Text(
                "Get start",
                style: TextStyle(color: Color(0xFFC92903)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
