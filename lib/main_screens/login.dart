import 'package:flutter/material.dart';
import 'package:multi_store/widgets/vertical_spacing.dart';
import 'package:multi_store/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      image: AssetImage('assets/images/inapp/logo.jpg'),
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
              margin: const EdgeInsets.only(top: 100),
              child: Column(children: [
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
                  onPressed: () {},
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
                      function: () {},
                      image: 'google',
                    ),
                    ExternalLoginWidget(
                      function: () {},
                      image: 'facebook',
                    ),
                    ExternalLoginWidget(
                      function: () {},
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
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xff56A29E)),
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
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xff56A29E)),
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

class ExternalLoginWidget extends StatelessWidget {
  const ExternalLoginWidget({
    super.key,
    required this.function,
    required this.image,
  });

  final Function function;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function;
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset('assets/images/inapp/$image.jpg'),
      ),
    );
  }
}
