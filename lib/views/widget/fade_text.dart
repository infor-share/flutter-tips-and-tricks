import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget fade_text({required List<AnimatedText> animatedTexts}){
  return SizedBox(
  width: 250.0,
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    child: AnimatedTextKit(
      animatedTexts: animatedTexts,
      onTap: () {
        print("Tap Event");
      },
    ),
  ),
);
}