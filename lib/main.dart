import 'package:flutter/material.dart';
import 'package:toku/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toku',
      theme: ThemeData(
        appBarTheme: const  AppBarTheme(
          backgroundColor: Color(0xFF483228)
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

