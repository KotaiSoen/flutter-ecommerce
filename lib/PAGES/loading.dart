// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.free_breakfast,
              color: Colors.white,
              size: 45.0,
            ),
            SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'nectar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.bold,
                  )
                ),
                Text(
                  'online groceries',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 12.0,
                    color: Colors.white,
                    fontFamily: 'NotoSans',
                    height: 1,
                  )
                )
              ]
            )
          ],
        ),
      )
    );
  }
}