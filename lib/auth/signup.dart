// ignore_for_file: avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_store/auth/auth.dart';
import 'package:multi_store/utilities/utilities.dart';
import 'package:multi_store/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late String name;
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  bool isPasswordVisible = false;

  final ImagePicker picker = ImagePicker();

  XFile? imageFile;
  dynamic pickImageError;

  void pickImageFromCamera() async {
    try {
      final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        maxHeight: 300,
        maxWidth: 300,
        imageQuality: 95,
      );
      setState(() {
        imageFile = pickedFile;
      });
    } catch (e) {
      setState(() {
        pickImageError = e;
      });
      print(pickImageError);
    }
  }

  void pickImageFromGallery() async {
    try {
      final pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        maxHeight: 300,
        maxWidth: 300,
        imageQuality: 95,
      );
      setState(() {
        imageFile = pickedFile;
      });
    } catch (e) {
      setState(() {
        pickImageError = e;
      });
      print(pickImageError);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.grey.shade200,
                                backgroundImage: imageFile == null
                                    ? const AssetImage(
                                        'assets/images/inapp/guest.jpg')
                                    : FileImage(File(imageFile!.path))
                                        as ImageProvider<Object>?,
                              ),
                              const HorizontalSpacing(20),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      onPressed: () {
                                        pickImageFromCamera();
                                      },
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
                                      onPressed: () {
                                        pickImageFromGallery();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const VerticalSpacing(20),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                            },
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
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
                          ),
                          const VerticalSpacing(20),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              } else if (value.isValidEmail() == false) {
                                return 'Please enter a valid email';
                              } else if (value.isValidEmail() == true) {
                                return null;
                              }
                              return null;
                            },
                            onChanged: (value) {
                              email = value;
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
                            onChanged: (value) {
                              password = value;
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
                              // Navigator.pushReplacementNamed(
                              //     context, '/customer_home');
                              if (_formKey.currentState!.validate()) {
                                if (imageFile != null) {
                                  print('valid');
                                  print('Name: $name');
                                  print('Email: $email');
                                  print('Password: $password');
                                  _formKey.currentState!.reset();
                                  setState(() {
                                    imageFile = null;
                                  });
                                } else {
                                  showSnackBar(
                                      context, 'Please select an image');
                                }
                              } else {
                                showSnackBar(context, 'Please fill the form');
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff56A29E)),
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
                                              const LoginPage()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
  }
}
