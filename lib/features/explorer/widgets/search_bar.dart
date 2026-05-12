import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/icons/bd_icons.dart';
import '../../../widgets/ui/bd_input.dart';
import '../state/explorer_controller.dart';

class ExplorerSearchBar extends ConsumerStatefulWidget {
  const ExplorerSearchBar({super.key});

  @override
  ConsumerState<ExplorerSearchBar> createState() => _ExplorerSearchBarState();
}

class _ExplorerSearchBarState extends ConsumerState<ExplorerSearchBar> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final initial = ref.read(explorerControllerProvider).request.query;
    _controller = TextEditingController(text: initial);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(
      explorerControllerProvider.select((s) => s.isLoading),
    );
    return Row(
      children: [
        Expanded(
          child: BdInput(
            controller: _controller,
            placeholder:
                'Search programs by need or keyword (e.g. food assistance, disability...)',
            prefix: const Icon(BdIcons.search),
            autofocus: true,
            onChanged: (value) =>
                ref.read(explorerControllerProvider.notifier).setQuery(value),
          ),
        ),
        if (isLoading)
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
      ],
    );
  }
}
