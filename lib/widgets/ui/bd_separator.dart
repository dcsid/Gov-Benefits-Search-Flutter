import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

enum BdSeparatorOrientation { horizontal, vertical }

class BdSeparator extends StatelessWidget {
  const BdSeparator({
    super.key,
    this.orientation = BdSeparatorOrientation.horizontal,
    this.thickness = 1,
  });

  final BdSeparatorOrientation orientation;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    final bd = BdColors.of(context);
    return Container(
      width: orientation == BdSeparatorOrientation.vertical ? thickness : null,
      height: orientation == BdSeparatorOrientation.horizontal
          ? thickness
          : null,
      color: bd.border,
    );
  }
}
