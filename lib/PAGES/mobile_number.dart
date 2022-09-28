// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/custom_widgets/app_bar.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: CustomAppBar(),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/mobile-confirmation');
            },
            backgroundColor: Colors.green[600],
            child: Icon(Icons.keyboard_arrow_right, size: 30),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: pagePadding),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enter your mobile number',
                    style: textStyle.copyWith(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 1.0,
                    )
                  ),
                  SizedBox(
                    height: 20.0
                  ),
                  Text(
                    'Mobile number',
                    style: textStyle.copyWith(
                      color: Colors.grey,
                    )
                  ),
                  TextField(
                    cursorColor: Colors.grey,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text('🇺🇸', style: TextStyle(fontSize: 25)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      )
                    )
                  )

                ]),
          ),
        ));
  }
}
