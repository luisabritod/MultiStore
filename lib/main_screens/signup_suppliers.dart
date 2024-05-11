import 'package:flutter/material.dart';
import 'package:multi_store/main_screens/main_screens.dart';
import 'package:multi_store/widgets/widgets.dart';

class SignUpSuppliersPage extends StatefulWidget {
  const SignUpSuppliersPage({super.key});

  @override
  State<SignUpSuppliersPage> createState() => _SignUpSuppliersPageState();
}

class _SignUpSuppliersPageState extends State<SignUpSuppliersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
          Text(
            'Supplier Sign Up',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 70,
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage:
                              const AssetImage('assets/images/inapp/guest.jpg'),
                        ),
                        const HorizontalSpacing(20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                // borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            const VerticalSpacing(10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                // borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.photo_outlined,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const VerticalSpacing(20),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.grey,
                        ),
                      ),
                      obscureText: true,
                    ),
                    const VerticalSpacing(20),
                    const TextField(
                      decoration: InputDecoration(
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
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.key_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      obscureText: true,
                    ),
                    const VerticalSpacing(20),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/customer_home');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff56A29E)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width, 40),
                        ),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      child: const Text('Sign Up'),
                    ),
                    const VerticalSpacing(40),
                    Row(
                      children: [
                        Text(
                          'Do you have an account?',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginSuppliersPage()));
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
    );
  }
}
