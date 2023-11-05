import 'package:flutter/material.dart';
import 'package:spanish_number_audio/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spanish Number Audio App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Spanish Number Audio"),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
