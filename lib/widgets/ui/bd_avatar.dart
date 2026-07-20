import 'package:flutter/material.dart';

class BdAvatar extends StatelessWidget {
  const BdAvatar({super.key, this.imageUrl, this.fallback, this.size = 40});

  final String? imageUrl;
  final String? fallback;
  final double size;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ClipOval(
      child: SizedBox(
        width: size,
        height: size,
        child: imageUrl != null
            ? Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _fallback(scheme),
              )
            : _fallback(scheme),
      ),
    );
  }

  Widget _fallback(ColorScheme scheme) => Container(
    color: scheme.surfaceContainerHigh,
    alignment: Alignment.center,
    child: Text(
      (fallback ?? '?').characters.take(2).toString().toUpperCase(),
      style: TextStyle(
        fontSize: size * 0.36,
        fontWeight: FontWeight.w500,
        color: scheme.onSurfaceVariant,
      ),
    ),
  );
}
