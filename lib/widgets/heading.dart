import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading(
    this.text, {
    this.type = HeadingTypes.title,
    super.key,
  });

  final String text;
  final HeadingTypes type;

  @override
  Widget build(BuildContext context) {
    final isTitle = type == HeadingTypes.title;

    final style = isTitle
        ? const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            height: 38 / 24,
          )
        : const TextStyle(
            fontSize: 16,
            color: Color(0xFFA1A1AA),
            height: 16 / 26,
          );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

enum HeadingTypes { title, subtitle }
