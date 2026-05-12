import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdTableColumn {
  const BdTableColumn({required this.label, this.numeric = false});
  final String label;
  final bool numeric;
}

class BdTable extends StatelessWidget {
  const BdTable({
    super.key,
    required this.columns,
    required this.rows,
    this.caption,
  });

  final List<BdTableColumn> columns;
  final List<List<Widget>> rows;
  final String? caption;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowHeight: 40,
            dataRowMinHeight: 40,
            dataRowMaxHeight: 56,
            dividerThickness: 1,
            border: TableBorder(
              horizontalInside: BorderSide(color: bd.border),
              bottom: BorderSide(color: bd.border),
            ),
            headingTextStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: scheme.onSurfaceVariant,
            ),
            dataTextStyle: const TextStyle(fontSize: 14),
            columns: [
              for (final c in columns)
                DataColumn(label: Text(c.label), numeric: c.numeric),
            ],
            rows: [
              for (final r in rows)
                DataRow(cells: [for (final cell in r) DataCell(cell)]),
            ],
          ),
        ),
        if (caption != null) ...[
          const SizedBox(height: 12),
          Text(
            caption!,
            style: TextStyle(fontSize: 13, color: scheme.onSurfaceVariant),
          ),
        ],
      ],
    );
  }
}
