import 'package:flutter/material.dart';
import 'package:multi_store/main_screens/main_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Store',
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) => const LoginPage(),
        '/customer_home': (context) => const CustomerHome(),
        '/supplier_home': (context) => const SupplierHome(),
      },
    );
  }
}
