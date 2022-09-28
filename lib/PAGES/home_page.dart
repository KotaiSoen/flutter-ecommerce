// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pagePadding, vertical: pagePadding),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset('assets/orange_carrot.png', height: 30, width: 30),
                    SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, size: 20, color: Colors.grey[700]),
                        Text(
                          'Dhaka, Banassre',
                          style: textStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      height: 45.0,
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 0),
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: 'Search Store',
                          hintStyle: textStyle.copyWith(
                            fontSize: 14,
                          ),
                          prefixIcon: Icon(Icons.search, size: 20, color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(style: BorderStyle.none)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(style: BorderStyle.none)
                          ),
                          
                        )
                      ),
                    ),
                    SizedBox(height: 20),
                    CarouselSlider(
                      options: CarouselOptions(height: 200.0),
                      items: []
                    )
                  ],
                ),
              ) 
            ]
          )
        )
      )
    );
  }
}
