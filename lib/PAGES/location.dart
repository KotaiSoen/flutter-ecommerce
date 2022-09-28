// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/custom_widgets/app_bar.dart';
import 'package:e_commerce/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pagePadding),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/location.png', width: 150, height: 150)
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Select Your Location',
                  style: textStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                  )
              ),
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Switch on your location to stay in tune with\n what\'s happening in your area',
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                    color: Colors.grey,
                    fontSize: 12.0,
                  )
                  )
              ),
              SizedBox(height: 20.0),
              CustomElevatedButton('Submit',() {
                Navigator.of(context).pushNamed('/login-email-password');
              })
            ]
          )
        )
      )
    );
  }
}