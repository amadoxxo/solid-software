import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const ColorChangerApp());

class ColorChangerApp extends StatefulWidget {
  const ColorChangerApp({super.key});

  @override
  State<ColorChangerApp> createState() => _ColorChangerAppState();
}

class _ColorChangerAppState extends State<ColorChangerApp> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Changer App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Solid Software'),
          elevation: 1,
          backgroundColor: backgroundColor,
        ),
        body: GestureDetector(
          onTap: () => _changeBackgroundColor(),
          child: Container(
              color: backgroundColor,
              child: const Center(
                child: Text(
                  'Hello there',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )),
        ),
      ),
    );
  }

  void _changeBackgroundColor() {
    Random random = Random();

    setState(() {
      backgroundColor = Color.fromARGB(
          255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
    });
  }
}
