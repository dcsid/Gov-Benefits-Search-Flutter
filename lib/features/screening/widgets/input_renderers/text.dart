import 'package:flutter/material.dart';

class TextInputRenderer extends StatefulWidget {
  const TextInputRenderer({
    super.key,
    required this.value,
    required this.onChanged,
    this.multiline = false,
    this.autofocus = false,
  });

  final String value;
  final ValueChanged<String> onChanged;
  final bool multiline;
  final bool autofocus;

  @override
  State<TextInputRenderer> createState() => _TextInputRendererState();
}

class _TextInputRendererState extends State<TextInputRenderer> {
  late final TextEditingController _ctl = TextEditingController(
    text: widget.value,
  );

  @override
  void didUpdateWidget(covariant TextInputRenderer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != _ctl.text) {
      _ctl.text = widget.value;
      _ctl.selection = TextSelection.fromPosition(
        TextPosition(offset: _ctl.text.length),
      );
    }
  }

  @override
  void dispose() {
    _ctl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _ctl,
      autofocus: widget.autofocus,
      maxLines: widget.multiline ? 6 : 1,
      minLines: widget.multiline ? 4 : 1,
      onChanged: widget.onChanged,
      decoration: const InputDecoration(hintText: 'Type your answer...'),
    );
  }
}
