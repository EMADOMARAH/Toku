import 'package:flutter/material.dart';
import 'package:toku/screens/HomeScreen.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text('Toku',
          style: TextStyle(
            color: Colors.white
          ),),
        ),
        body: const HomeScreen()
      ),
    );
  }
}










