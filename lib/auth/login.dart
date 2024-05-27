// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multi_store/auth/auth.dart';
import 'package:multi_store/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;
  bool isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/inapp/wave_welcome_screen.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: (MediaQuery.of(context).size.width / 2) -
                      (340 / 2), // Centraliza horizontalmente
                  top: 130,
                  child: Container(
                    width: 320,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/inapp/logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        )),
                  ),
                  const VerticalSpacing(20),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff56A29E),
                          )),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.key_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const VerticalSpacing(20),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/customer_home');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff56A29E)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width, 40),
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.grey.shade600),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      child: const Text('Forgot password?'),
                    ),
                  ),
                  const VerticalSpacing(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExternalLoginWidget(
                        function: () {
                          print('foi chamado na teoria google');
                        },
                        image: 'google',
                      ),
                      ExternalLoginWidget(
                        function: () {
                          print('foi chamado na teoria face');
                        },
                        image: 'facebook',
                      ),
                      isProcessing
                          ? const CircularProgressIndicator()
                          : ExternalLoginWidget(
                              function: () async {
                                setState(() {
                                  isProcessing = true;
                                });
                                await FirebaseAuth.instance.signInAnonymously();
                                Navigator.pushReplacementNamed(
                                    context, '/customer_home');
                              },
                              image: 'guest',
                            ),
                    ],
                  ),
                  const VerticalSpacing(40),
                  Row(
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              const Color(0xff56A29E)),
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Are you a supplier?',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginSuppliersPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              const Color(0xff56A29E)),
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
