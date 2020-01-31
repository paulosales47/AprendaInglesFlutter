import 'package:aprendendo_ingles/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff795548),
      accentColor: Colors.white,
      scaffoldBackgroundColor: Color(0xfff5e9b9)

    ),
    home: Home(),
  ));
}