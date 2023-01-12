import 'package:coshoot/pages/login_email.dart';
import 'package:coshoot/pages/login_phone.dart';
import 'package:coshoot/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login_phone',
    routes: {
      '/login_phone': (context)=>LoginPhone(),
      '/login_email': (context)=>LoginEmail(),
      '/register': (context)=>Register(),
    },
    home: LoginEmail(),
  ));
}