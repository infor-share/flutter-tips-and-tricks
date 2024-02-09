import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget animated_text({String txt = 'Hello word!'}) {
  return AnimatedTextKit(
    animatedTexts: [
      TypewriterAnimatedText(
        txt,
        textStyle: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        speed: const Duration(milliseconds: 200),
      ),
    ],
    totalRepeatCount: 4,
    pause: const Duration(milliseconds: 1000),
    displayFullTextOnTap: true,
    stopPauseOnTap: true,
  );
}
