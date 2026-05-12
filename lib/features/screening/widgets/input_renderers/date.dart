import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInputRenderer extends StatelessWidget {
  const DateInputRenderer({
    super.key,
    required this.value,
    required this.onChanged,
    this.autofocus = false,
  });

  final DateTime? value;
  final ValueChanged<DateTime> onChanged;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final fmt = DateFormat.yMMMMd();
    final text = value == null ? '' : fmt.format(value!);
    final ctl = TextEditingController(text: text);
    return TextField(
      controller: ctl,
      readOnly: true,
      decoration: const InputDecoration(
        hintText: 'Pick a date',
        suffixIcon: Icon(Icons.calendar_today, size: 18),
      ),
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
          initialDate: value ?? DateTime.now(),
        );
        if (picked != null) onChanged(picked);
      },
    );
  }
}
