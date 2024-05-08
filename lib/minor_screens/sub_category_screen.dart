import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen(
      {super.key, required this.title, required this.label});

  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          title,
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
      body: Center(
        child: Text(label),
      ),
    );
  }
}
