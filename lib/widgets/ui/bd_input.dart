import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdInput extends StatelessWidget {
  const BdInput({
    super.key,
    this.controller,
    this.value,
    this.onChanged,
    this.onSubmitted,
    this.placeholder,
    this.enabled = true,
    this.obscureText = false,
    this.keyboardType,
    this.prefix,
    this.suffix,
    this.autofocus = false,
    this.textInputAction,
    this.maxLength,
  });

  final TextEditingController? controller;
  final String? value;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? placeholder;
  final bool enabled;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    final bd = BdColors.of(context);
    final scheme = Theme.of(context).colorScheme;
    return TextField(
      controller:
          controller ??
          (value != null ? TextEditingController(text: value) : null),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      enabled: enabled,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autofocus: autofocus,
      textInputAction: textInputAction,
      maxLength: maxLength,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        hintText: placeholder,
        hintStyle: TextStyle(color: scheme.onSurfaceVariant),
        prefixIcon: prefix,
        suffixIcon: suffix,
        counterText: '',
        filled: true,
        fillColor: scheme.surface,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: bd.borderStrong),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: bd.border),
        ),
      ),
    );
  }
}
