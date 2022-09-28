// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: pagePadding, vertical: pagePadding),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/orange_carrot.png',
                                width: 40, height: 40)),
                        SizedBox(height: 50.0),
                        Text('Sign Up',
                            style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            )),
                        SizedBox(height: 5.0),
                        Text('Enter your credentials to continue',
                            style: textStyle.copyWith(
                              color: Colors.grey,
                            )),
                        SizedBox(height: 30.0),
                        Text('Username',
                            style: textStyle.copyWith(
                              color: Colors.grey,
                            )),
                        TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              ))
                            )
                        ),
                        SizedBox(height: 30.0),
                        Text('Email',
                            style: textStyle.copyWith(
                              color: Colors.grey,
                            )),
                        TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              ))
                            )
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          'Password',
                          style: textStyle.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        TextField(
                          style: TextStyle(letterSpacing: 10),
                          obscureText: obscureText,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                obscureText ? Icons.visibility : Icons.visibility_off
                              ),
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey,
                            ))
                            )
                        ),
                        SizedBox(height: 10.0),
                        Text.rich(
                          TextSpan(
                            text: 'By continuing you agree to our ',
                            style: textStyle.copyWith(fontSize: 12),
                            children: [
                              TextSpan(
                                text: 'Terms of Service ',
                                style: TextStyle(color: green),
                              ),
                              TextSpan(
                                text: 'and '
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(color: green),
                              )
                            ]
                          ),
                        ),
                        SizedBox(height: 20.0),
                        CustomElevatedButton('Sign Up', () {
                          Navigator.of(context).pushReplacementNamed('/main-page');
                        }),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: textStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            SizedBox(
                              width: 3.0
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed('/login-email-password');
                              },
                              child: Text(
                                'Login',
                                style: textStyle.copyWith(
                                  fontSize: 11,
                                  color: Color.fromARGB(255, 38, 91, 184)
                                )
                              ),
                            )
                          ],
                        )    
                    ]),
                )
            )
        )
    );
  }
}