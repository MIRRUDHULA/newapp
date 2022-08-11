import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:userapp/welcome.dart';
import 'package:untitled7/welcome.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: welcomescreeen(),
    );
  }
}
