import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: TextTypingAnimation(),
        ),
      ),
    );
  }
}

class TextTypingAnimation extends StatefulWidget {
  const TextTypingAnimation({super.key});

  @override
  State<TextTypingAnimation> createState() => _TextTypingAnimationState();
}

class _TextTypingAnimationState extends State<TextTypingAnimation> {
  int _currentIndex = 0;
  final String text = "Code With Mehroz!";

  void textTypingAnimation() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % text.length;
    });
    Future.delayed(const Duration(milliseconds: 50), textTypingAnimation);
  }

  @override
  void initState() {
    super.initState();
    textTypingAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Typing Animation"),
      ),
      body: Center(
        child: Text(
          "${text.substring(0, _currentIndex)}|",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
