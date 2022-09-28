// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/PAGES/home_page.dart';
import 'package:e_commerce/PAGES/location.dart';
import 'package:e_commerce/PAGES/login_email_password.dart';
import 'package:e_commerce/PAGES/mobile_confirmation.dart';
import 'package:e_commerce/PAGES/mobile_number.dart';
import 'package:e_commerce/PAGES/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/PAGES/home.dart';
import 'package:e_commerce/PAGES/login.dart';

void main() {
  runApp(MaterialApp(
    routes: {
    '/': (context) => Home(),
    '/login': (context) => Login(),
    '/mobile-number': (context) => MobileNumber(),
    '/mobile-confirmation': (context) => MobileConfirmation(),
    '/location': (context) => Location(),
    '/login-email-password': (context) => EmailAndPassword(),
    '/sign-up': (context) => SignUp(),
    '/home-page': (context) => HomePage(),
  }));
}
