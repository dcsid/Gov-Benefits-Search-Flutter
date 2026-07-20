import 'package:flutter/material.dart';

class BdLabel extends StatelessWidget {
  const BdLabel({super.key, required this.text, this.htmlFor});

  final String text;
  final String? htmlFor;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: htmlFor,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1.0,
        ),
      ),
    );
  }
}
