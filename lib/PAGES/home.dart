// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/home_image.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 60.0),
            child: Center(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/white_carrot.png', width: 40, height: 40),
                    SizedBox(height: 10.0),
                    Text(
                      'Welcome',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      letterSpacing: 1.0,
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    Text(
                      'to our store',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      letterSpacing: 1.0,
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    Text(
                      'Get your groceries in as fast as one hour',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontFamily: 'NotoSans'
                      )
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[400],
                        minimumSize: Size(300.0, 50.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text('Get Started'),
              
                    )
                  ],
                ),
              ),
            )
          )
        )
      ],
    );
  }
}