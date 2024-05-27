import 'package:flutter/material.dart';
import 'package:multi_store/auth/auth.dart';
import 'package:multi_store/firebase_options.dart';
import 'package:multi_store/main_screens/main_screens.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    // ignore: avoid_print
    print('Error at initialization of firebase.');
  }

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
