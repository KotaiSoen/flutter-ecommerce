// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

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
                        Text('Login',
                            style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            )),
                        SizedBox(height: 5.0),
                        Text('Enter your email and password',
                            style: textStyle.copyWith(
                              color: Colors.grey,
                            )),
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            )
                          )
                        ),
                        SizedBox(height: 20.0),
                        CustomElevatedButton('Log in', () {
                          Navigator.of(context).pushReplacementNamed('/home-page');
                        }),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
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
                                Navigator.of(context).pushReplacementNamed('/sign-up');
                              },
                              child: Text(
                                'Signup',
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
