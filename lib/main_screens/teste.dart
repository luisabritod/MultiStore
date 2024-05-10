import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 800,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 68,
            top: 367,
            child: SizedBox(
              width: 222,
              height: 18,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 18,
                    child: Container(
                      width: 222,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF9C9C9C),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 22,
                    top: 0,
                    child: Text(
                      'Email address',
                      style: TextStyle(
                        color: Color(0xFF9C9C9C),
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 69,
            top: 415,
            child: SizedBox(
              width: 222,
              height: 18,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 18,
                    child: Container(
                      width: 222,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF9C9C9C),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 22,
                    top: 0,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xFF9C9C9C),
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 573,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/inapp/wave_welcome_screen.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            top: 110,
            child: Container(
              width: 320,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ianapp/logo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 69,
            top: 466,
            child: Container(
              width: 222,
              height: 30,
              decoration: ShapeDecoration(
                color: const Color(0xFF56A29E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 68,
            top: 573,
            child: Container(
              width: 222,
              height: 20,
              decoration: const BoxDecoration(color: Color(0xFF9C9C9C)),
            ),
          ),
          Positioned(
            left: 68,
            top: 602,
            child: Container(
              width: 222,
              height: 20,
              decoration: const BoxDecoration(color: Color(0xFF9C9C9C)),
            ),
          ),
          Positioned(
            left: 68,
            top: 631,
            child: Container(
              width: 222,
              height: 20,
              decoration: const BoxDecoration(color: Color(0xFF9C9C9C)),
            ),
          ),
          const Positioned(
            left: 165,
            top: 474,
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 212,
            top: 508,
            child: Text(
              'Forget password?',
              style: TextStyle(
                color: Color(0xFF56A29E),
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 68,
            top: 693,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Don’t have an account?',
                    style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: Color(0xFF56A29E),
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 68,
            top: 723,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Are you a supplier?',
                    style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(
                      color: Color(0xFF56A29E),
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 132,
            top: 577,
            child: Text(
              'Continue with Google',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 132,
            top: 606,
            child: Text(
              'Continue with Facebook',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 132,
            top: 635,
            child: Text(
              'Continue as a guest',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 577,
            child: Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/inapp/google.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 635,
            child: Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/inapp/guest.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 606,
            child: Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/inapp/facebook.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
