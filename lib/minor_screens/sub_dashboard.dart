import 'package:flutter/material.dart';

class SubDashboardScreen extends StatelessWidget {
  const SubDashboardScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
