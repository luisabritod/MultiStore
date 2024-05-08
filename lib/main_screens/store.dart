import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Stores',
          style: GoogleFonts.acme(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 28,
              letterSpacing: 1.2,
            ),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
