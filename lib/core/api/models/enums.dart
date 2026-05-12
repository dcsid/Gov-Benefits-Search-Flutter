import 'package:json_annotation/json_annotation.dart';

enum ScopeChoice {
  @JsonValue('federal')
  federal,
  @JsonValue('state')
  state,
  @JsonValue('both')
  both,
}

enum DepthChoice {
  // note: Python uses 'quick'/'standard'/'deep'; TS stub used 'light'/'standard'/'detailed'.
  @JsonValue('quick')
  quick,
  @JsonValue('standard')
  standard,
  @JsonValue('deep')
  deep,
}

enum BreadthChoice {
  @JsonValue('focused')
  focused,
  @JsonValue('balanced')
  balanced,
  @JsonValue('broad')
  broad,
}

enum EligibilityStatus {
  @JsonValue('likely_eligible')
  likelyEligible,
  @JsonValue('possibly_eligible')
  possiblyEligible,
  @JsonValue('unclear')
  unclear,
  @JsonValue('likely_ineligible')
  likelyIneligible,
}

enum ProgramCategory {
  @JsonValue('children_families')
  childrenFamilies,
  @JsonValue('death')
  death,
  @JsonValue('disabilities')
  disabilities,
  @JsonValue('disasters')
  disasters,
  @JsonValue('education')
  education,
  @JsonValue('food')
  food,
  @JsonValue('general')
  general,
  @JsonValue('health')
  health,
  @JsonValue('housing_utilities')
  housingUtilities,
  @JsonValue('jobs_unemployment')
  jobsUnemployment,
  @JsonValue('military_veterans')
  militaryVeterans,
  @JsonValue('retirement_seniors')
  retirementSeniors,
  @JsonValue('welfare_cash_assistance')
  welfareCashAssistance,
}

enum ChatRole {
  @JsonValue('user')
  user,
  @JsonValue('assistant')
  assistant,
  @JsonValue('system')
  system,
}

enum ChatContextMode {
  @JsonValue('screening')
  screening,
  @JsonValue('general')
  general,
  @JsonValue('program')
  program,
}

enum HealthStatus {
  @JsonValue('ok')
  ok,
  @JsonValue('degraded')
  degraded,
  @JsonValue('down')
  down,
  // Python returns 'error', 'missing_credential', and 'unknown' for the LLM leg.
  @JsonValue('error')
  error,
  @JsonValue('missing_credential')
  missingCredential,
  @JsonValue('unknown')
  unknown,
}

enum ReviewTaskStatus {
  @JsonValue('open')
  open,
  @JsonValue('resolved')
  resolved,
  @JsonValue('dismissed')
  dismissed,
}
