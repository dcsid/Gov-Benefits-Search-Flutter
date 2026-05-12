import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/models/enums.dart';
import '../../../core/api/models/explorer.dart';
import '../../../core/api/providers.dart';

class ExplorerState {
  const ExplorerState({
    required this.request,
    required this.isLoading,
    this.response,
    this.error,
    this.errorStack,
  });

  factory ExplorerState.initial() =>
      const ExplorerState(request: ExplorerSearchRequest(), isLoading: false);

  final ExplorerSearchRequest request;
  final bool isLoading;
  final ExplorerSearchResponse? response;
  final Object? error;
  final StackTrace? errorStack;

  ExplorerState copyWith({
    ExplorerSearchRequest? request,
    bool? isLoading,
    ExplorerSearchResponse? response,
    bool clearResponse = false,
    Object? error,
    StackTrace? errorStack,
    bool clearError = false,
  }) {
    return ExplorerState(
      request: request ?? this.request,
      isLoading: isLoading ?? this.isLoading,
      response: clearResponse ? null : (response ?? this.response),
      error: clearError ? null : (error ?? this.error),
      errorStack: clearError ? null : (errorStack ?? this.errorStack),
    );
  }

  List<ExplorerHit> get hits => response?.programs ?? const [];
  bool get isEmpty => !isLoading && hits.isEmpty;
}

class ExplorerController extends Notifier<ExplorerState> {
  Timer? _debounce;
  int _searchSeq = 0;

  @override
  ExplorerState build() {
    ref.onDispose(() => _debounce?.cancel());
    Future.microtask(_runSearch);
    return ExplorerState.initial();
  }

  void setQuery(String query) {
    state = state.copyWith(request: state.request.copyWith(query: query));
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), _runSearch);
  }

  void setStateCode(String? code) {
    state = state.copyWith(
      request: state.request.copyWith(stateCode: code),
    );
    _runSearch();
  }

  void toggleCategory(ProgramCategory category) {
    final wire = _categoryWire(category);
    final current = List<String>.from(state.request.categories);
    if (current.contains(wire)) {
      current.remove(wire);
    } else {
      current.add(wire);
    }
    state = state.copyWith(
      request: state.request.copyWith(categories: current),
    );
    _runSearch();
  }

  void setScope(ScopeChoice scope) {
    state = state.copyWith(
      request: state.request.copyWith(scope: scope.name),
    );
    _runSearch();
  }

  void setUseLlm(bool useLlm) {
    state = state.copyWith(request: state.request.copyWith(useLlm: useLlm));
    _runSearch();
  }

  Future<void> _runSearch() async {
    final seq = ++_searchSeq;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final res =
          await ref.read(explorerServiceProvider).search(state.request);
      if (seq != _searchSeq) return;
      state = state.copyWith(isLoading: false, response: res);
    } catch (err, st) {
      if (seq != _searchSeq) return;
      state = state.copyWith(isLoading: false, error: err, errorStack: st);
    }
  }
}

final explorerControllerProvider =
    NotifierProvider<ExplorerController, ExplorerState>(
  ExplorerController.new,
);

/// Maps a [ProgramCategory] enum to its FastAPI wire string.
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

String programCategoryLabel(ProgramCategory cat) {
  switch (cat) {
    case ProgramCategory.childrenFamilies:
      return 'Children & families';
    case ProgramCategory.death:
      return 'Death & survivors';
    case ProgramCategory.disabilities:
      return 'Disabilities';
    case ProgramCategory.disasters:
      return 'Disasters';
    case ProgramCategory.education:
      return 'Education';
    case ProgramCategory.food:
      return 'Food';
    case ProgramCategory.general:
      return 'General';
    case ProgramCategory.health:
      return 'Health';
    case ProgramCategory.housingUtilities:
      return 'Housing & utilities';
    case ProgramCategory.jobsUnemployment:
      return 'Jobs & unemployment';
    case ProgramCategory.militaryVeterans:
      return 'Military & veterans';
    case ProgramCategory.retirementSeniors:
      return 'Retirement & seniors';
    case ProgramCategory.welfareCashAssistance:
      return 'Cash assistance';
  }
}
