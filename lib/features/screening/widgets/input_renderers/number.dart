import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInputRenderer extends StatefulWidget {
  const NumberInputRenderer({
    super.key,
    required this.value,
    required this.onChanged,
    this.autofocus = false,
    this.isCurrency = false,
  });

  final String value;
  final ValueChanged<String> onChanged;
  final bool autofocus;
  final bool isCurrency;

  @override
  State<NumberInputRenderer> createState() => _NumberInputRendererState();
}

class _NumberInputRendererState extends State<NumberInputRenderer> {
  late final TextEditingController _ctl = TextEditingController(
    text: widget.value,
  );

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
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: false,
      ),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
      ],
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        prefixText: widget.isCurrency ? r'$' : null,
        hintText: widget.isCurrency ? '0' : 'Number',
      ),
    );
  }
}
