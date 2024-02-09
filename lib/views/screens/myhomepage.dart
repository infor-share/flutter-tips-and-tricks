import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:tips_and_tricks/views/widget/animation_text.dart';
import 'package:tips_and_tricks/views/widget/fade_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          animated_text(txt: 'Useful tips and tricks'),
          fade_text(animatedTexts: [
            FadeAnimatedText('Useful'),
            FadeAnimatedText('Useful tips and tricks')
          ])
        ],
      ),
    );
  }
}
