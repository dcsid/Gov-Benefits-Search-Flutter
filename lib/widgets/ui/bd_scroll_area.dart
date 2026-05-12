import 'package:flutter/material.dart';

class BdScrollArea extends StatelessWidget {
  const BdScrollArea({
    super.key,
    required this.child,
    this.controller,
    this.scrollDirection = Axis.vertical,
  });

  final Widget child;
  final ScrollController? controller;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      thumbVisibility: true,
      thickness: 6,
      radius: const Radius.circular(999),
      child: SingleChildScrollView(
        controller: controller,
        scrollDirection: scrollDirection,
        child: child,
      ),
    );
  }
}
