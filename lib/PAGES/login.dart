// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(
              child: SizedBox(
                height: 200.0,
                child: Image.asset('assets/login.jpg'),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 200.0,
              child: Text(
                'Get your groceries with nectar',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                )
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/mobile-number');
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xff4A66AC)),
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.flag, color: Color(0xff4A66AC)),
                    SizedBox(width: 40.0),
                    Text(
                      'Your mobile number',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        color: Colors.grey
                      )
                    )
                  ]
                )
              ),
            ),
            SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'or continue with social media',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
            SizedBox(height: 35.0),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff5383EC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  )
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('assets/google.png'),
                    ),
                    SizedBox(width: 50.0),
                    Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                      )
                    )
                  ]
                )
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4A66AC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )
                  ),
                child: Row(
                  children: [
                    Icon(Icons.facebook),
                    SizedBox(width: 40.0),
                    Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                      )
                    )
                  ]
                )
              ),
            ),
            SizedBox(height: 40.0),
          ]),
        ));
  }
}
