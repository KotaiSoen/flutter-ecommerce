// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/custom_widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';

class MobileConfirmation extends StatefulWidget {
  
  const MobileConfirmation({super.key});

  @override
  State<MobileConfirmation> createState() => _MobileConfirmationState();
}

class _MobileConfirmationState extends State<MobileConfirmation> {

  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  String currentText = "";

  @override
  void initState() {
     errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/location');
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
                  'Enter your 4-digit code',
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
                  'Code',
                  style: textStyle.copyWith(
                    color: Colors.grey,
                  )
                ),
                SizedBox(height: 20.0),
                PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600 ,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '-',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 45.0),
                          child: Text(
                            'Resend Code',
                            style: textStyle.copyWith(
                              color: Colors.green[600],
                              fontSize: 16
                            )
                          ),
                        )
                      ),
                    )
              ]),
        )
      )
    );
  }
}