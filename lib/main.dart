import 'package:flutter/material.dart';
import 'package:ostad_assigment2_module10/home_screen.dart';

void main() {
  runApp(
    const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery App',
      home: HomeScreen(),
    );
  }
}
