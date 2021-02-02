import 'package:flutter/material.dart';
import 'package:pr_cimentos/screens/home/home_screem.dart';
import 'package:pr_cimentos/tema.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PR Cimentos',
      theme: tema(),
      home: HomeScreem(),
    );
  }
}
