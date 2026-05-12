import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/models/enums.dart';
import '../../../core/api/providers.dart';
import '../../../widgets/ui/bd_alert.dart';
import '../../../widgets/ui/bd_card.dart';
import '../../../widgets/ui/bd_select.dart';
import '../../../widgets/ui/bd_skeleton.dart';
import '../state/explorer_controller.dart';

class FilterRail extends ConsumerWidget {
  const FilterRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch only the filter-relevant slices. Crucially this does NOT include
    // [ExplorerState.request.query], so the rail no longer rebuilds on every
    // search-bar keystroke.
    final stateCode = ref.watch(
      explorerControllerProvider.select((s) => s.request.stateCode),
    );
    final scopeValue = ref.watch(
      explorerControllerProvider.select((s) => _scopeFromWire(s.request.scope)),
    );
    final categories = ref.watch(
      explorerControllerProvider.select((s) => s.request.categories),
    );
    final controller = ref.read(explorerControllerProvider.notifier);
    final statesAsync = ref.watch(statesListProvider);

    return BdCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Filters', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          statesAsync.when(
            data: (states) => BdSelect<String?>(
              placeholder: 'Any jurisdiction',
              value: stateCode,
              items: <BdSelectItem<String?>>[
                const BdSelectItem(value: null, label: 'Any jurisdiction'),
                const BdSelectItem(value: 'federal', label: 'Federal'),
                ...states.map(
                  (s) => BdSelectItem<String?>(value: s.code, label: s.name),
                ),
              ],
              onChanged: controller.setStateCode,
            ),
            loading: () => const BdSkeleton(height: 56),
            error: (_, __) => const BdAlert(
              variant: BdAlertVariant.warning,
              description: Text('Could not load states'),
            ),
          ),
          const SizedBox(height: 12),
          BdSelect<ScopeChoice>(
            value: scopeValue,
            items: const [
              BdSelectItem(value: ScopeChoice.both, label: 'Federal & state'),
              BdSelectItem(value: ScopeChoice.federal, label: 'Federal only'),
              BdSelectItem(value: ScopeChoice.state, label: 'State only'),
            ],
            onChanged: (value) {
              if (value != null) controller.setScope(value);
            },
          ),
          const SizedBox(height: 16),
          Text('Categories', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              for (final cat in ProgramCategory.values)
                FilterChip(
                  label: Text(programCategoryLabel(cat)),
                  selected: categories.contains(_categoryWire(cat)),
                  onSelected: (_) => controller.toggleCategory(cat),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

ScopeChoice _scopeFromWire(String wire) {
  switch (wire) {
    case 'federal':
      return ScopeChoice.federal;
    case 'state':
      return ScopeChoice.state;
    case 'both':
    default:
      return ScopeChoice.both;
  }
}

String _categoryWire(ProgramCategory cat) {
  switch (cat) {
    case ProgramCategory.childrenFamilies:
      return 'children_families';
    case ProgramCategory.death:
      return 'death';
    case ProgramCategory.disabilities:
      return 'disabilities';
    case ProgramCategory.disasters:
      return 'disasters';
    case ProgramCategory.education:
      return 'education';
    case ProgramCategory.food:
      return 'food';
    case ProgramCategory.general:
      return 'general';
    case ProgramCategory.health:
      return 'health';
    case ProgramCategory.housingUtilities:
      return 'housing_utilities';
    case ProgramCategory.jobsUnemployment:
      return 'jobs_unemployment';
    case ProgramCategory.militaryVeterans:
      return 'military_veterans';
    case ProgramCategory.retirementSeniors:
      return 'retirement_seniors';
    case ProgramCategory.welfareCashAssistance:
      return 'welfare_cash_assistance';
  }
}
