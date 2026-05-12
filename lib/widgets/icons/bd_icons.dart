import 'package:flutter/material.dart';

/// Maps the names used in `web/components/bd/icons.tsx` to Material icons.
/// One static class — keep names stable so feature widgets can read them.
class BdIcons {
  const BdIcons._();

  // Navigation
  static const IconData arrowRight = Icons.arrow_forward;
  static const IconData arrowLeft = Icons.arrow_back;
  static const IconData chevDown = Icons.expand_more;
  static const IconData chevRight = Icons.chevron_right;
  static const IconData close = Icons.close;
  static const IconData menu = Icons.menu;

  // Status
  static const IconData check = Icons.check;
  static const IconData info = Icons.info_outline;
  static const IconData alert = Icons.warning_amber_rounded;
  static const IconData question = Icons.help_outline;

  // Function
  static const IconData search = Icons.search;
  static const IconData send = Icons.send;
  static const IconData shield = Icons.verified_user_outlined;
  static const IconData globe = Icons.public;
  static const IconData list = Icons.format_list_bulleted;
  static const IconData spark = Icons.auto_awesome;
  static const IconData doc = Icons.description_outlined;
  static const IconData chat = Icons.chat_bubble_outline;
  static const IconData user = Icons.person_outline;
  static const IconData bot = Icons.smart_toy_outlined;
  static const IconData ear = Icons.hearing;

  // Domain
  static const IconData home = Icons.home_outlined;
  static const IconData cart = Icons.shopping_cart_outlined;
  static const IconData pill = Icons.medication_outlined;
  static const IconData heart = Icons.favorite_outline;
  static const IconData brief = Icons.work_outline;
  static const IconData pin = Icons.location_on_outlined;
  static const IconData clock = Icons.access_time;
  static const IconData bookmark = Icons.bookmark_outline;
  static const IconData refresh = Icons.refresh;
  static const IconData copy = Icons.content_copy_outlined;
  static const IconData thumbsUp = Icons.thumb_up_outlined;
  static const IconData thumbsDown = Icons.thumb_down_outlined;
  static const IconData paperclip = Icons.attach_file;

  // Theme
  static const IconData moon = Icons.dark_mode_outlined;
  static const IconData sun = Icons.light_mode_outlined;
  static const IconData monitor = Icons.computer;

  // Extra (used by marketing/hero from shadcn version)
  static const IconData compass = Icons.explore_outlined;
  static const IconData messagesSquare = Icons.forum_outlined;
  static const IconData clipboardList = Icons.assignment_outlined;
  static const IconData scrollText = Icons.article_outlined;
  static const IconData target = Icons.gps_fixed;
  static const IconData badgeCheck = Icons.verified_outlined;
  static const IconData lock = Icons.lock_outline;

  /// Painted Benefits Digger logo mark — a stylized "house with check" shape.
  /// Used by [BdLogoMark] widget. Returns size-aware Container.
  static Widget logoMark({double size = 20, Color? color}) =>
      _BdLogoMarkPainter(size: size, color: color);
}

class _BdLogoMarkPainter extends StatelessWidget {
  const _BdLogoMarkPainter({required this.size, this.color});
  final double size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final stroke = color ?? Theme.of(context).colorScheme.onPrimary;
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(painter: _LogoPainter(stroke)),
    );
  }
}

class _LogoPainter extends CustomPainter {
  _LogoPainter(this.color);
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width * 0.08
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;
    final s = size.width / 28;
    // House outline: M4 14 14 4 24 14
    final house = Path()
      ..moveTo(4 * s, 14 * s)
      ..lineTo(14 * s, 4 * s)
      ..lineTo(24 * s, 14 * s);
    canvas.drawPath(house, paint);
    // Walls: M7 13 v9 h14 v-9
    final walls = Path()
      ..moveTo(7 * s, 13 * s)
      ..lineTo(7 * s, 22 * s)
      ..lineTo(21 * s, 22 * s)
      ..lineTo(21 * s, 13 * s);
    canvas.drawPath(walls, paint);
    // Check: m10 17 3 3 5-5
    final check = Path()
      ..moveTo(10 * s, 17 * s)
      ..lineTo(13 * s, 20 * s)
      ..lineTo(18 * s, 15 * s);
    canvas.drawPath(check, paint);
  }

  @override
  bool shouldRepaint(_LogoPainter oldDelegate) => oldDelegate.color != color;
}
