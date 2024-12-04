import 'package:flutter/material.dart';
import 'package:fortune/screen/fortune_screen.dart';

class FortuneApp extends StatelessWidget {
  const FortuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const FortuneScreen(),
    );
  }
}
