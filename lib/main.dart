import 'package:flutter/material.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Widgets',
      debugShowCheckedModeBanner: false,
      
      locale: const Locale('ar', 'SA'),
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
        useMaterial3: true,
      ),
      
      home: const HomeScreen(),
    );
  }
}