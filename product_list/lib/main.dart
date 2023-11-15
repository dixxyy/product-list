// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:product_list/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Application',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          appBarTheme: AppBarTheme(
            elevation: 6,
          )),
      home: LoginPage(),
    );
  }
}
