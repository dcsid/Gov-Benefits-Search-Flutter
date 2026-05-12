// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get nav_home => 'Home';

  @override
  String get nav_dashboard => 'Dashboard';

  @override
  String get nav_results => 'Results';

  @override
  String get nav_whatif => 'What-If Lab';

  @override
  String get nav_explorer => 'Explorer';

  @override
  String get page_homeTitle => 'Benefits Digger';

  @override
  String get page_dashboardTitle => 'Planning Dashboard - Benefits Digger';

  @override
  String get page_resultsTitle => 'Results - Benefits Digger';

  @override
  String get page_whatifTitle => 'What-If Lab - Benefits Digger';

  @override
  String get page_explorerTitle => 'Program Explorer - Benefits Digger';

  @override
  String get app_eyebrow => 'Benefits Digger';

  @override
  String get app_headline =>
      'Plan, compare, and pursue benefits with official government evidence.';

  @override
  String get app_lede =>
      'Screen benefits, compare what-if scenarios, browse the official catalog, and leave with a clearer action plan grounded in government sources.';

  @override
  String get home_startScreening => 'Start Screening';

  @override
  String get home_trustPrivate => 'Your data is private and never stored.';

  @override
  String get home_trustSources =>
      'Data sourced directly from official government programs.';

  @override
  String get home_scope => 'Scope';

  @override
  String get home_scopeBoth => 'Federal and state';

  @override
  String get home_scopeFederal => 'Federal only';

  @override
  String get home_scopeState => 'State only';

  @override
  String get home_state => 'State';

  @override
  String get home_chooseState => 'Choose a state';

  @override
  String get home_breadth => 'Breadth';

  @override
  String get home_breadthFocused => 'Focused';

  @override
  String get home_breadthBalanced => 'Balanced';

  @override
  String get home_breadthBroad => 'Broad';

  @override
  String get home_depth => 'Depth';

  @override
  String get home_depthLight => 'High-level';

  @override
  String get home_depthStandard => 'Standard';

  @override
  String get home_depthDetailed => 'Detailed';

  @override
  String get home_categories => 'Benefit categories';

  @override
  String get home_categoriesHint =>
      'Select at least one category to find benefits you may qualify for and information on how to apply.';

  @override
  String get home_selectAll => 'Select all';

  @override
  String get home_clear => 'Clear';

  @override
  String get home_apply => 'Apply selections';

  @override
  String get home_reset => 'Reset';

  @override
  String get home_refreshSources => 'Refresh Official Sources';

  @override
  String get home_questionFlow => 'Question Flow';

  @override
  String get home_questionEmpty => 'Start a session to begin the screener.';

  @override
  String get home_saveAnswer => 'Save Answer';

  @override
  String get home_backQuestion => 'Back to previous question';

  @override
  String get home_showResults => 'Show Results Now';

  @override
  String get home_reviewQueue => 'Review Queue';

  @override
  String get home_refreshQueue => 'Refresh Queue';

  @override
  String get home_noReviewTasks => 'No review tasks yet.';

  @override
  String home_breadthApprox(String description, String count) {
    return '$description (~$count questions)';
  }

  @override
  String home_depthApprox(String description) {
    return '$description';
  }

  @override
  String get home_noMoreQuestions =>
      'No more questions queued. Results are ready.';

  @override
  String get home_noProgramsFound =>
      'We couldn\'t find any benefit programs matching your selection. Try broadening your categories or selecting a different state.';

  @override
  String get home_selectCategory =>
      'Select at least one category before applying your selections.';

  @override
  String get home_chooseScope =>
      'Choose a screening scope before starting your session.';

  @override
  String get home_chooseStateMsg =>
      'Please choose a state before starting state or combined screening.';

  @override
  String get home_chooseOne => 'Choose one';

  @override
  String get home_searching => 'Searching...';

  @override
  String get home_creatingSession => 'Creating session...';

  @override
  String get home_creatingSessionState =>
      'Creating session and loading state benefits...';

  @override
  String home_sessionLive(String sessionId) {
    return 'Session $sessionId is live.';
  }

  @override
  String home_sessionError(String error) {
    return 'Could not start session: $error';
  }

  @override
  String get home_answerRequired =>
      'Please choose an answer before continuing.';

  @override
  String get home_answerSaved => 'Answer saved.';

  @override
  String home_answerError(String error) {
    return 'Could not save answer: $error';
  }

  @override
  String get home_resultsRefreshed => 'Results refreshed.';

  @override
  String get home_refreshingOfficialSources => 'Refreshing official sources...';

  @override
  String get home_officialSourcesRefreshed => 'Official sources refreshed.';

  @override
  String home_syncSummary(String added, String crawled) {
    return 'Official sources refreshed. Crawled $crawled program sites and added $added direct government page sources.';
  }

  @override
  String home_syncFailed(String error) {
    return 'Sync failed: $error';
  }

  @override
  String home_sensitivity(String level) {
    return '$level sensitivity';
  }

  @override
  String get home_sourceLabel => 'Source';

  @override
  String home_reviewTaskMeta(String score, String diffType) {
    return '$diffType · materiality $score';
  }

  @override
  String get home_adminKey => 'Admin access key';

  @override
  String get home_adminPlaceholder =>
      'Only needed when admin protection is enabled';

  @override
  String get home_adminHelp =>
      'Used only for review queue and source refresh actions. Stored in this browser tab until you clear it.';

  @override
  String get home_saveKey => 'Save key';

  @override
  String get home_clearKey => 'Clear key';

  @override
  String get home_adminSaved => 'Admin key saved for this browser tab.';

  @override
  String get home_adminCleared => 'Admin key cleared.';

  @override
  String get home_lifeIntakePill => 'Life-event intake';

  @override
  String get home_lifeIntakeTitle => 'Describe what is going on';

  @override
  String get home_lifeIntakeLabel =>
      'Tell us about the struggle in your own words';

  @override
  String get home_lifeIntakePlaceholder =>
      'Example: I lost my job, I’m behind on rent, and I’m trying to figure out whether there is help for food and medical coverage.';

  @override
  String get home_lifeIntakeHint =>
      'You do not need to classify the problem first. We will turn your description into suggested categories, likely facts, and the next questions that matter most.';

  @override
  String get home_lifeIntakeAnalyze => 'Analyze my situation';

  @override
  String get home_lifeIntakeClear => 'Clear intake';

  @override
  String get home_lifeSummaryTitle => 'What I heard';

  @override
  String get home_lifeSuggestedScope => 'Suggested scope';

  @override
  String get home_lifeSuggestedState => 'Suggested state';

  @override
  String get home_lifeCategoriesTitle => 'Suggested benefit areas';

  @override
  String get home_lifeFactsTitle => 'Structured facts so far';

  @override
  String get home_lifeMissingTitle => 'Still useful to ask';

  @override
  String get home_lifeApply => 'Use these suggestions in the screener';

  @override
  String get home_lifeStart => 'Start screening from chat';

  @override
  String get home_lifeChatTitle => 'Benefits assistant';

  @override
  String get home_lifeAssistantName => 'Zobo';

  @override
  String get home_lifeChatLauncherLabel => 'Open Zobo assistant';

  @override
  String get home_lifeChatClose => 'Minimize assistant';

  @override
  String get home_lifeChatMinimize => 'Minimize';

  @override
  String get home_lifeChatHint =>
      'Tell me what is going on, and I will ask one short follow-up at a time.';

  @override
  String get home_lifeChatEmpty =>
      'Start by describing what you are dealing with, and I will translate it into benefit areas and next questions.';

  @override
  String get home_lifeChatInputLabel => 'Reply to the assistant';

  @override
  String get home_lifeChatWelcome =>
      'Hi. I’m Zobo. Tell me a little about what’s going on, and I’ll help you sort through the next steps.';

  @override
  String get home_lifeChatWelcomeSession =>
      'Hi. I’m Zobo. I can stay with you while you review this session. Ask me to explain a result, a missing fact, or what to do next.';

  @override
  String get home_lifeChatPlaceholder =>
      'Try: I lost my job, I am behind on rent, and I need help with food.';

  @override
  String get home_lifeChatPlaceholderYesNo =>
      'A short yes or no is enough here.';

  @override
  String get home_lifeChatPlaceholderState =>
      'Reply with a state like CA, California, or New York.';

  @override
  String get home_lifeChatSend => 'Reply';

  @override
  String get home_lifeChatSending => 'Sending...';

  @override
  String get home_lifeChatQuickReplies => 'Quick replies';

  @override
  String get home_lifeChatNavigate => 'You may also want to go to';

  @override
  String get home_navAction_use_screener => 'Use the screener';

  @override
  String get home_navAction_start_screening => 'Start screening';

  @override
  String get home_navAction_open_explorer => 'Open Program Explorer';

  @override
  String get home_navAction_open_results => 'Open Results';

  @override
  String get home_navAction_open_dashboard => 'Open Dashboard';

  @override
  String get home_lifeChatUserLabel => 'You';

  @override
  String get home_lifeChatStatusEmpty =>
      'Tell me what is going on to get started.';

  @override
  String get home_lifeChatStatusWaitingDetails =>
      'Tell me a little more so I can point you in the right direction.';

  @override
  String get home_lifeChatStatusThinking => 'Thinking through your update...';

  @override
  String get home_lifeChatStatusReady => 'I have one quick follow-up ready.';

  @override
  String get home_lifeChatStatusDone => 'I have enough to move forward.';

  @override
  String get home_lifeNoCategories => 'No benefit areas inferred yet.';

  @override
  String get home_lifeNoFacts => 'No structured facts captured yet.';

  @override
  String get home_lifeNoMissing =>
      'No critical follow-up questions are missing right now.';

  @override
  String get home_lifeApplyDone =>
      'Assistant suggestions copied into the screener controls.';

  @override
  String get home_lifeStarted =>
      'Started screening from the assistant\'s suggestions.';

  @override
  String get home_lifeDescriptionRequired =>
      'Tell me what is going on so I can help.';

  @override
  String get home_lifeAnalyzing => 'Analyzing your situation...';

  @override
  String get home_lifeAnalyzed => 'Life-event intake updated.';

  @override
  String home_lifeInterpretError(String error) {
    return 'Could not analyze the intake: $error';
  }

  @override
  String get home_lifeProbeUpdated => 'Follow-up details added.';

  @override
  String home_lifeProbeError(String error) {
    return 'Could not process that follow-up: $error';
  }

  @override
  String get results_title => 'Results';

  @override
  String results_liveMatches(String count) {
    return '$count live matches';
  }

  @override
  String get results_print => 'Print';

  @override
  String get results_redoScreening => 'Redo Screening';

  @override
  String get results_downloadPdf => 'Download PDF';

  @override
  String get results_scrollUp => 'Scroll up';

  @override
  String get results_scrollDown => 'Scroll down';

  @override
  String get results_generatingPdf => 'Generating...';

  @override
  String get results_noSession =>
      'No active session. <a href=\"/\">Start a screening</a> first.';

  @override
  String get results_federalTitle => 'Federal Results';

  @override
  String get results_stateTitle => 'State Results';

  @override
  String get results_noFederal =>
      'No federal results yet. Answer more questions to improve matches.';

  @override
  String get results_noState =>
      'No state results yet. Answer more questions to improve matches.';

  @override
  String get results_federalOnlyFinished =>
      'This is a federal-only session, so no state results are shown.';

  @override
  String get results_federalOnlyHidden =>
      'State results are hidden while Federal only scope is selected.';

  @override
  String results_loadError(String error) {
    return 'Could not load results: $error';
  }

  @override
  String get dashboard_title => 'Planning Dashboard';

  @override
  String get dashboard_noSession => 'No active session';

  @override
  String get dashboard_empty =>
      'No active session yet. Start a session to unlock planning summary, action steps, and missing-fact analysis.';

  @override
  String get dashboard_goHome => 'Go to Home to start a session';

  @override
  String get dashboard_downloadPdf => 'Download PDF';

  @override
  String get dashboard_generatingPdf => 'Generating...';

  @override
  String get dashboard_benefitStack => 'Benefit stack';

  @override
  String get dashboard_missingFacts => 'Top missing facts';

  @override
  String get dashboard_actions => 'Recommended next actions';

  @override
  String get dashboard_sourceHub => 'Official source hub';

  @override
  String get dashboard_docChecklist => 'Document checklist';

  @override
  String get dashboard_planningNotes => 'Planning notes';

  @override
  String get dashboard_likelyPrograms => 'Likely programs';

  @override
  String get dashboard_possiblePrograms => 'Possible programs';

  @override
  String get dashboard_answeredQuestions => 'Answered questions';

  @override
  String get dashboard_avgRuleCoverage => 'Average rule coverage';

  @override
  String get dashboard_estMonthly => 'Est. monthly benefits';

  @override
  String get dashboard_noBenefitStack => 'No benefit stack yet.';

  @override
  String get dashboard_noMissingFacts => 'No missing-fact hotspots right now.';

  @override
  String get dashboard_noActions => 'No action steps yet.';

  @override
  String get dashboard_noSourceHub => 'No official source hub yet.';

  @override
  String get dashboard_noDocuments =>
      'No documents required yet. Complete screening to see what you need.';

  @override
  String get dashboard_noPlanningNotes =>
      'Planning notes will appear after your session has results.';

  @override
  String dashboard_loadError(String error) {
    return 'Could not load plan: $error';
  }

  @override
  String get dashboard_noSessionLink =>
      'No active session. <a href=\"/\">Start a screening</a> first.';

  @override
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  ) {
    return 'Breadth $breadthLabel ($breadthPercent%) · Depth $depthLabel ($depthPercent%)';
  }

  @override
  String get dashboard_likely => 'likely';

  @override
  String get dashboard_possible => 'possible';

  @override
  String get dashboard_noTopPrograms => 'No top programs yet.';

  @override
  String dashboard_confidence(String value) {
    return 'confidence $value/100';
  }

  @override
  String dashboard_affects(String count) {
    return 'Affects $count program matches.';
  }

  @override
  String dashboard_neededFor(String programs) {
    return 'Needed for: $programs';
  }

  @override
  String get whatif_title => 'What-If Lab';

  @override
  String get whatif_pill => 'Scenario compare';

  @override
  String get whatif_noSession =>
      'No active session. <a href=\"/\">Start a screening</a> first.';

  @override
  String get whatif_quickStartIntro =>
      'No active session. Start one here to run scenarios:';

  @override
  String get whatif_scopeLabel => 'Scope';

  @override
  String get whatif_stateLabel => 'State';

  @override
  String get whatif_categoriesLabel => 'Benefit categories';

  @override
  String get whatif_startSession => 'Start Session';

  @override
  String get whatif_description =>
      'Run scenario comparisons without changing your saved answers. These presets show how the result set changes if a life fact shifts.';

  @override
  String get whatif_startThenRun => 'Start a session, then run a scenario.';

  @override
  String get whatif_noResult => 'No scenario result returned.';

  @override
  String get whatif_scenarioCompare => 'Scenario comparison';

  @override
  String get whatif_likelyDelta => 'Likely delta';

  @override
  String get whatif_possibleDelta => 'Possible delta';

  @override
  String get whatif_federalDelta => 'Federal delta';

  @override
  String get whatif_stateDelta => 'State delta';

  @override
  String get whatif_newPrograms => 'New or unlocked programs';

  @override
  String get whatif_improvedPrograms => 'Improved programs';

  @override
  String get whatif_noNewMatches => 'No new positive matches in this scenario.';

  @override
  String get whatif_noImprovements =>
      'No status improvements in this scenario.';

  @override
  String get whatif_toStatus => 'to';

  @override
  String get whatif_startFirst => 'Start a session before running scenarios.';

  @override
  String get whatif_updated => 'Scenario comparison updated.';

  @override
  String whatif_failed(String error) {
    return 'Scenario compare failed: $error';
  }

  @override
  String get explorer_title => 'Program Explorer';

  @override
  String get explorer_refresh => 'Refresh Explorer';

  @override
  String get explorer_description =>
      'Hybrid Explorer combines plain-English need descriptions with the official catalog. It may use Gemini for interpretation when configured, and always falls back to grounded local matching.';

  @override
  String get explorer_scope => 'Scope';

  @override
  String get explorer_state => 'State';

  @override
  String get explorer_describe => 'Describe what you need';

  @override
  String get explorer_describePlaceholder =>
      'Example: I lost a family member in California and need help with funeral costs and survivor benefits.';

  @override
  String get explorer_search => 'Exact keyword search';

  @override
  String get explorer_placeholder =>
      'Try retirement, disability, funeral, veterans...';

  @override
  String get explorer_submit => 'Run hybrid search';

  @override
  String get explorer_empty =>
      'Use the explorer to browse the current official program catalog.';

  @override
  String get explorer_noMatch =>
      'No programs matched this search. Try a broader description or remove a filter.';

  @override
  String get explorer_minChars =>
      'Enter at least 2 characters for exact keyword search.';

  @override
  String get explorer_openOfficial => 'Open official government page';

  @override
  String explorer_failed(String error) {
    return 'Explorer failed: $error';
  }

  @override
  String get explorer_methodGemini => 'Gemini + grounded catalog';

  @override
  String get explorer_methodHeuristic =>
      'Grounded catalog + local interpretation';

  @override
  String get explorer_interpretationTitle => 'Search Interpretation';

  @override
  String get explorer_needAreas => 'Need areas';

  @override
  String get explorer_stateLabel => 'State:';

  @override
  String get explorer_searchTerms => 'Search terms:';

  @override
  String explorer_score(String score) {
    return 'Score $score';
  }

  @override
  String get explorer_browseSummary => 'Browsing the official program catalog.';

  @override
  String get explorer_localizedSummary =>
      'Showing how your need was interpreted from the local grounded catalog.';

  @override
  String get card_confidence => 'Confidence';

  @override
  String get card_clickExpand => '(click to expand)';

  @override
  String get card_eligibilityCriteria => 'Eligibility Criteria';

  @override
  String get card_criteriaMet => 'met';

  @override
  String get card_met => 'met';

  @override
  String get card_notMet => 'not met';

  @override
  String get card_unanswered => 'unanswered';

  @override
  String get card_amount => 'Amount';

  @override
  String get card_amountEstimated => ' (estimated)';

  @override
  String get card_whyMatched => 'Why it matched';

  @override
  String get card_noMatchedReasons => 'No matched reasons yet.';

  @override
  String get card_missingFacts => 'What is still missing';

  @override
  String get card_noMissingFacts => 'No missing facts for this current pass.';

  @override
  String get card_documentsNeeded => 'Documents needed';

  @override
  String get card_noDocuments =>
      'No document checklist available for this program.';

  @override
  String get card_dataGathered =>
      'Data gathered from official government websites';

  @override
  String get card_noSources => 'No official government sources attached.';

  @override
  String get card_howToGet => 'How to get this benefit';

  @override
  String get card_noApplicationPath =>
      'No official application path is available for this result yet.';

  @override
  String get card_openOfficial => 'Open official government page';

  @override
  String get card_useSourcesBelow => 'Use the official sources below.';

  @override
  String get card_notAvailable => 'Not available';

  @override
  String get card_unknownAgency => 'Unknown agency';

  @override
  String get card_noSummary => 'No summary available.';

  @override
  String get card_noBreakdown => 'No breakdown available.';

  @override
  String card_verified(String date) {
    return 'verified $date';
  }

  @override
  String get category_children_families => 'Children and families';

  @override
  String get category_death => 'Death';

  @override
  String get category_disabilities => 'Disabilities';

  @override
  String get category_disasters => 'Disasters';

  @override
  String get category_education => 'Education';

  @override
  String get category_food => 'Food';

  @override
  String get category_general => 'General';

  @override
  String get category_health => 'Health';

  @override
  String get category_housing_utilities => 'Housing and utilities';

  @override
  String get category_jobs_unemployment => 'Jobs and unemployment';

  @override
  String get category_military_veterans => 'Military and veterans';

  @override
  String get category_retirement_seniors => 'Retirement and seniors';

  @override
  String get category_welfare_cash_assistance => 'Welfare and cash assistance';

  @override
  String get breadth_focused =>
      'Focused keeps the screen short and concentrates on the strongest program signals.';

  @override
  String get breadth_balanced =>
      'Balanced explores a moderate number of possible programs before stopping.';

  @override
  String get breadth_broad =>
      'Broad keeps exploring longer so the screener can cover more possible programs.';

  @override
  String get depth_light =>
      'High-level keeps questions broad, usually yes/no or simple category prompts.';

  @override
  String get depth_standard =>
      'Standard mixes broad screeners with some more specific follow-ups.';

  @override
  String get depth_detailed =>
      'Detailed asks for exact amounts, dates, durations, and other precise facts when available.';

  @override
  String get scenario_limitedIncome => 'If I had limited income and resources';

  @override
  String get scenario_limitedIncomeDesc =>
      'Useful for cash-assistance or SSI-style planning.';

  @override
  String get scenario_disability => 'If I had a qualifying disability';

  @override
  String get scenario_disabilityDesc =>
      'Tests disability-related pathways and work-limitation rules.';

  @override
  String get scenario_military => 'If I had active-duty military service';

  @override
  String get scenario_militaryDesc =>
      'Checks whether service history opens veteran benefits.';

  @override
  String get scenario_familyDeath => 'If I had a recent family death event';

  @override
  String get scenario_familyDeathDesc =>
      'Explores survivor and funeral assistance pathways.';

  @override
  String get status_likely_eligible => 'likely eligible';

  @override
  String get status_possibly_eligible => 'possibly eligible';

  @override
  String get status_unclear => 'Unclear';

  @override
  String get status_likely_ineligible => 'likely ineligible';

  @override
  String get sensitivity_low => 'low';

  @override
  String get sensitivity_medium => 'medium';

  @override
  String get sensitivity_high => 'high';

  @override
  String get certainty_rule_coverage => 'rule coverage';

  @override
  String get certainty_source_authority => 'source authority';

  @override
  String get certainty_source_freshness => 'source freshness';

  @override
  String get certainty_program_determinism => 'program determinism';

  @override
  String get certainty_amount_determinism => 'amount determinism';

  @override
  String get intake_scope_federal => 'Federal only for now';

  @override
  String get intake_scope_state => 'State-specific screening';

  @override
  String get intake_scope_both => 'Federal and state screening';

  @override
  String get intake_fact_state_code => 'State selected';

  @override
  String get intake_fact_applicant_income => 'Limited income and resources';

  @override
  String get intake_fact_applicant_disability =>
      'Disability or qualifying illness';

  @override
  String get intake_fact_applicant_ability_to_work =>
      'Unable to work for a year or more';

  @override
  String get intake_fact_applicant_served_in_active_military =>
      'Active-duty military service';

  @override
  String get intake_fact_applicant_service_disability =>
      'Service-connected disability';

  @override
  String get intake_fact_applicant_dolo => 'Recent family death';

  @override
  String get intake_fact_deceased_died_of_COVID => 'COVID-related death';

  @override
  String get intake_fact_deceased_death_location_is_US =>
      'Death occurred in the U.S.';

  @override
  String get intake_fact_applicant_paid_into_SS =>
      'Worked and paid Social Security taxes';

  @override
  String get intake_fact_recent_job_loss => 'Recent job loss or reduced hours';

  @override
  String get intake_fact_housing_urgency =>
      'Urgent housing or utility pressure';

  @override
  String get intake_fact_food_insecurity => 'Food or grocery hardship';

  @override
  String get intake_fact_current_student =>
      'Currently in school or job training';

  @override
  String get intake_fact_has_children => 'Children or dependents in household';

  @override
  String get intake_fact_is_62_or_older => 'Age 62 or older';

  @override
  String get intake_fact_recent_disaster_impact => 'Recent disaster impact';

  @override
  String get intake_fact_needs_health_coverage =>
      'Needs health coverage or medical help';

  @override
  String get intake_fact_annual_income_amount => 'Approximate annual income';

  @override
  String get docType_required => 'required';

  @override
  String get docType_recommended => 'recommended';

  @override
  String get reviewStatus_open => 'open';

  @override
  String get reviewDiff_eligibility => 'eligibility';

  @override
  String get reviewDiff_structural => 'structural';

  @override
  String get reviewDiff_content => 'content';

  @override
  String get server_step_startState =>
      'Start on the official state social services website.';

  @override
  String get server_step_useStateTools =>
      'Use the state\'s official benefit tools or program pages to choose the benefit you need.';

  @override
  String get server_step_followStateInstructions =>
      'Follow the state\'s official instructions for documents, local office contact, or online submission.';

  @override
  String get server_step_reviewEligibility =>
      'Review the official government eligibility source used for this match.';

  @override
  String get server_step_openOfficial =>
      'Open the official government page to start or continue the application.';

  @override
  String get server_step_useSamePage =>
      'Use the same official page for required documents, status checks, or agency contact details.';

  @override
  String server_note_strongMatches(String plural, String count) {
    return 'You already have $count strong match$plural to pursue on official government sites.';
  }

  @override
  String server_note_possibleMatches(String plural, String count) {
    return 'You have $count possible match$plural; answering a few more questions should tighten these.';
  }

  @override
  String server_note_biggestGap(String label) {
    return 'The biggest information gap right now is: $label.';
  }

  @override
  String get server_note_chooseState =>
      'Choose a state to unlock official state benefit pathways.';

  @override
  String get admin_invalidKey =>
      'The saved admin key was rejected. Update it and try again.';

  @override
  String get admin_requiredKey =>
      'Admin key required. Enter it in the Admin access field to use review and sync actions.';

  @override
  String errors_requestFailed(String status) {
    return 'Request failed with status $status.';
  }

  @override
  String get errors_genericTitle => 'Something went wrong';

  @override
  String get errors_generic => 'Something went wrong. Please try again.';

  @override
  String get errors_validation =>
      'Couldn\'t process that request — please refresh and try again.';

  @override
  String get errors_rateLimited =>
      'Too many requests. Please wait a minute and try again.';

  @override
  String get errors_server =>
      'Our service is having trouble. Please try again later.';

  @override
  String get errors_network =>
      'Couldn\'t reach the server. Check your connection.';

  @override
  String get errors_timeout => 'The request timed out. Please try again.';

  @override
  String get errors_auth => 'You need to sign in to do that.';

  @override
  String get errors_notFound => 'We couldn\'t find what you were looking for.';

  @override
  String get errors_tryAgain => 'Try again';

  @override
  String results_federalSection(int count) {
    return 'Federal programs ($count)';
  }

  @override
  String results_stateSection(int count) {
    return 'State programs ($count)';
  }

  @override
  String get results_emptyFederal =>
      'No federal programs matched. Try answering more questions or broadening your screening.';

  @override
  String get results_emptyState =>
      'No state programs matched yet. Add your state in the screening to see local programs.';

  @override
  String get results_viewActionPlan => 'View action plan';

  @override
  String get results_couldNotLoad => 'We couldn\'t load your results.';

  @override
  String get dashboard_couldNotLoad => 'We couldn\'t load your action plan.';

  @override
  String get dashboard_applyLinkUnavailable =>
      'Application link unavailable — contact your local agency.';

  @override
  String get dashboard_apply => 'Apply';

  @override
  String dashboard_step(int n) {
    return 'Step $n';
  }

  @override
  String get dashboard_emptyStack =>
      'We don\'t have a benefit stack for you yet. Finish your screening to populate it.';

  @override
  String get dashboard_emptyActions =>
      'No next actions yet — answer a few more questions to get a tailored plan.';

  @override
  String get dashboard_emptyDocuments => 'No documents to gather yet.';

  @override
  String get dashboard_emptyNotes => 'No additional notes for your situation.';

  @override
  String get dashboard_emptySources => 'No source links available.';

  @override
  String get dashboard_helpNarrowDown => 'Help us narrow this down';

  @override
  String get dashboard_missingFactsHint =>
      'Answering these unlocks more accurate matches.';

  @override
  String get dashboard_resumeScreening => 'Resume screening';

  @override
  String get dashboard_documentsTitle => 'Documents to gather';

  @override
  String get dashboard_notesTitle => 'Planning notes';

  @override
  String get dashboard_sourceHubTitle => 'Official source hub';

  @override
  String get dashboard_stackTitle => 'Your benefit stack';

  @override
  String get dashboard_actionsTitle => 'Next actions';

  @override
  String get status_likelyEligible => 'Likely eligible';

  @override
  String get status_possiblyEligible => 'Possibly eligible';

  @override
  String get status_likelyIneligible => 'Probably not';

  @override
  String get dynamic_question_dob => 'What is your date of birth?';

  @override
  String get dynamic_hint_dobExample => 'For example: 1990-01-20';

  @override
  String get dynamic_question_paidIntoSS =>
      'Did you ever work and pay U.S. Social Security taxes?';

  @override
  String get dynamic_question_limitedIncome =>
      'Do you have limited income and resources?';

  @override
  String get dynamic_hint_limitedIncome =>
      'This is a broad screening question, not a final determination.';

  @override
  String get dynamic_question_disability =>
      'Do you have a disability or qualifying illness?';

  @override
  String get dynamic_question_unableToWork =>
      'Are you unable to work for a year or more because of your disability?';

  @override
  String get dynamic_question_activeMilitary =>
      'Did you serve in the active military, naval, or air service?';

  @override
  String get dynamic_question_serviceDisabilityDetailed =>
      'Was your disability caused or made worse by your active-duty military service?';

  @override
  String get dynamic_question_familyDeathDetailed =>
      'Did you recently experience the death of an immediate family member?';

  @override
  String get dynamic_question_dateOfDeath => 'What was the date of death?';

  @override
  String get dynamic_hint_dateOfDeath =>
      'If you do not know the exact date, enter an approximate one.';

  @override
  String get dynamic_question_covidDeath =>
      'Was the person\'s death COVID-19 related?';

  @override
  String get dynamic_question_deathInUs => 'Did the person die in the U.S.?';

  @override
  String get dynamic_hint_deathInUs =>
      'Including Puerto Rico and U.S. territories.';

  @override
  String get dynamic_question_householdIncome =>
      'What is your approximate annual household income?';

  @override
  String get dynamic_hint_householdIncome =>
      'For reference, the 2024 federal poverty level is \$15,060/year for a single-person household. Many programs use 130–200% of this threshold.';

  @override
  String get dynamic_question_disabilityType =>
      'What type of disability or condition do you have?';

  @override
  String get dynamic_hint_disabilityType =>
      'Select all that apply. Under SSA rules, a qualifying disability must significantly limit your ability to perform basic work activities.';

  @override
  String get dynamic_question_monthsUnableToWork =>
      'How many months has your condition prevented you from working?';

  @override
  String get dynamic_hint_monthsUnableToWork =>
      'SSDI requires inability to engage in substantial gainful activity for at least 12 consecutive months (42 U.S.C. § 423(d)(1)(A)).';

  @override
  String get dynamic_question_approxAge => 'What is your approximate age?';

  @override
  String get dynamic_hint_approxAge =>
      'A rough age is enough for a quick check.';

  @override
  String get dynamic_question_exactDob => 'What is your exact date of birth?';

  @override
  String get dynamic_hint_exactDob =>
      'Full retirement age varies: 66 for those born 1943–1954, increasing to 67 for those born 1960 or later (42 U.S.C. § 416(l)).';

  @override
  String get dynamic_question_militaryVeteran => 'Are you a military veteran?';

  @override
  String get dynamic_hint_activeMilitary =>
      'VA benefits require active duty service. Reserve/National Guard service may qualify if activated under federal orders (38 U.S.C. § 101(2)).';

  @override
  String get dynamic_question_serviceDisabilitySimple =>
      'Was your disability related to military service?';

  @override
  String get dynamic_hint_serviceDisabilityDetailed =>
      'VA disability compensation requires a service-connected condition with a disability rating of at least 10% (38 U.S.C. § 1110).';

  @override
  String get dynamic_question_familyDeathSimple =>
      'Did you recently lose a family member?';

  @override
  String get dynamic_hint_familyDeathDetailed =>
      'Survivor benefits eligibility depends on your relationship to the deceased and their work history (42 U.S.C. § 402).';

  @override
  String get dynamic_question_stateCode =>
      'Which state or territory do you want state benefits for?';

  @override
  String get dynamic_hint_stateCode =>
      'State benefits vary by state and are kept separate from federal matches.';

  @override
  String get dynamic_option_yes => 'Yes';

  @override
  String get dynamic_option_no => 'No';

  @override
  String get dynamic_option_physicalDisability => 'Physical disability';

  @override
  String get dynamic_option_cognitiveDisability =>
      'Cognitive or intellectual disability';

  @override
  String get dynamic_option_sensoryDisability =>
      'Sensory disability (vision/hearing)';

  @override
  String get dynamic_option_mentalHealth => 'Mental health condition';

  @override
  String get dynamic_option_chronicIllness => 'Chronic illness';

  @override
  String get dynamic_option_noneOfTheAbove => 'None of the above';

  @override
  String get dynamic_summary_retirement =>
      'Monthly retirement income for people who worked and paid Social Security taxes.';

  @override
  String get dynamic_summary_ssdi =>
      'Monthly disability benefits for people who paid into Social Security and cannot work due to disability.';

  @override
  String get dynamic_summary_ssi =>
      'Monthly support for older adults and people with disabilities who have limited income and resources.';

  @override
  String get dynamic_summary_vaDisability =>
      'Tax-free monthly payments for veterans whose disability was caused or worsened by active-duty service.';

  @override
  String get dynamic_summary_survivor =>
      'Monthly Social Security payments for eligible family members after a worker dies.';

  @override
  String get dynamic_summary_funeral =>
      'Financial help for funeral or burial costs for someone who died of COVID-19 in the U.S.';

  @override
  String get dynamic_reason_paidIntoSS =>
      'You worked and paid Social Security taxes.';

  @override
  String get dynamic_reason_retirementAge => 'You are at least retirement age.';

  @override
  String get dynamic_reason_limitedIncome =>
      'You have limited income and resources.';

  @override
  String get dynamic_reason_disability =>
      'You have a disability or qualifying illness.';

  @override
  String get dynamic_reason_unableToWork =>
      'You cannot work for a year or more because of your disability.';

  @override
  String get dynamic_reason_activeMilitary =>
      'You served in the active military.';

  @override
  String get dynamic_reason_serviceDisability =>
      'Your disability was caused or worsened by active-duty service.';

  @override
  String get dynamic_reason_familyDeath =>
      'You recently experienced the death of a family member.';

  @override
  String get dynamic_reason_covidDeath =>
      'The deceased\'s death was COVID-19 related.';

  @override
  String get dynamic_reason_diedInUs => 'The deceased died in the U.S.';

  @override
  String get dynamic_reason_afterDate =>
      'The deceased died after May 20, 2020.';

  @override
  String get dynamic_amount_ssi =>
      'Up to \$943/month for individuals, \$1,415/month for couples (2024 rates).';

  @override
  String get dynamic_amount_retirement =>
      'Monthly amount depends on work history and claiming age.';

  @override
  String get dynamic_amount_ssdi => 'Monthly amount depends on work history.';

  @override
  String get dynamic_amount_vaDisability =>
      'Amount depends on disability rating and dependents.';

  @override
  String get dynamic_amount_survivor =>
      'Monthly amount depends on the worker\'s record and your relationship.';

  @override
  String get dynamic_amount_funeral =>
      'Reimbursement amount depends on eligible funeral expenses.';

  @override
  String get dynamic_document_ssnCard => 'Social Security card or number';

  @override
  String get dynamic_document_ssnCardDesc => 'Your 9-digit SSN';

  @override
  String get dynamic_document_proofOfAge => 'Proof of age';

  @override
  String get dynamic_document_proofOfAgeDesc => 'Birth certificate or passport';

  @override
  String get dynamic_document_w2 => 'W-2 forms or self-employment tax returns';

  @override
  String get dynamic_document_w2RecentDesc =>
      'Most recent year\'s earnings records';

  @override
  String get dynamic_document_w2CurrentPriorDesc =>
      'Earnings records for the current and prior year';

  @override
  String get dynamic_document_bankInfo => 'Bank account information';

  @override
  String get dynamic_document_bankInfoDesc => 'For direct deposit of benefits';

  @override
  String get dynamic_document_medicalRecords => 'Medical records';

  @override
  String get dynamic_document_medicalRecordsDesc =>
      'Documentation of your disability from doctors, hospitals, or clinics';

  @override
  String get dynamic_document_incomeResources =>
      'Proof of income and resources';

  @override
  String get dynamic_document_incomeResourcesDesc =>
      'Pay stubs, bank statements, or benefit award letters';

  @override
  String get dynamic_document_disabilityDocsDesc =>
      'Documentation of your disability';

  @override
  String get dynamic_document_livingArrangement =>
      'Proof of living arrangement';

  @override
  String get dynamic_document_livingArrangementDesc =>
      'Lease, mortgage statement, or letter from landlord';

  @override
  String get dynamic_document_citizenship =>
      'Proof of citizenship or immigration status';

  @override
  String get dynamic_document_citizenshipDesc =>
      'Birth certificate, passport, or immigration documents';

  @override
  String get dynamic_document_dd214 => 'DD-214 (discharge papers)';

  @override
  String get dynamic_document_dd214Desc =>
      'Certificate of Release or Discharge from Active Duty';

  @override
  String get dynamic_document_serviceEvidenceDesc =>
      'Evidence linking your disability to military service';

  @override
  String get dynamic_document_vaForm => 'VA Form 21-526EZ';

  @override
  String get dynamic_document_vaFormDesc =>
      'Application for Disability Compensation';

  @override
  String get dynamic_document_deceasedSsn =>
      'Deceased\'s Social Security number';

  @override
  String get dynamic_document_deceasedSsnDesc => 'The worker\'s SSN';

  @override
  String get dynamic_document_deathCertificate => 'Death certificate';

  @override
  String get dynamic_document_deathCertificateDesc =>
      'Certified copy of the death certificate';

  @override
  String get dynamic_document_relationshipProof => 'Proof of relationship';

  @override
  String get dynamic_document_relationshipProofDesc =>
      'Marriage certificate, birth certificate, or adoption papers';

  @override
  String get dynamic_document_covidDeathCertificateDesc =>
      'Must attribute the death to COVID-19';

  @override
  String get dynamic_document_funeralReceipts => 'Funeral expense receipts';

  @override
  String get dynamic_document_funeralReceiptsDesc =>
      'Itemized receipts or contracts from funeral providers';

  @override
  String get dynamic_document_usResidency => 'Proof of U.S. residency';

  @override
  String get dynamic_document_usResidencyDesc =>
      'For the person who incurred the funeral expenses';

  @override
  String get dynamic_document_femaAppNumber => 'FEMA application number';

  @override
  String get dynamic_document_femaAppNumberDesc =>
      'If you previously applied for other FEMA assistance';

  @override
  String get lang_en => 'English';

  @override
  String get lang_es => 'Español';

  @override
  String get brand_name => 'Benefits Digger';

  @override
  String get brand_tagline =>
      'Find every benefit you may qualify for. Backed by official sources.';

  @override
  String get nav_screen => 'Screen';

  @override
  String get nav_chat => 'Assistant';

  @override
  String get nav_programs => 'Programs';

  @override
  String get nav_skipToContent => 'Skip to main content';

  @override
  String get nav_openMenu => 'Open menu';

  @override
  String get nav_closeMenu => 'Close menu';

  @override
  String get theme_toggle => 'Toggle theme';

  @override
  String get theme_light => 'Light';

  @override
  String get theme_dark => 'Dark';

  @override
  String get theme_system => 'System';

  @override
  String get language_switcher => 'Language';

  @override
  String get landing_eyebrow => 'Plan with confidence';

  @override
  String get landing_heroTitle =>
      'See every government benefit you may qualify for.';

  @override
  String get landing_heroLede =>
      'Benefits Digger walks you through a short conversation, screens you against federal and state programs, and grounds every match in an official source.';

  @override
  String get landing_startScreening => 'Start screening';

  @override
  String get landing_startScreeningHint =>
      'Five-minute walkthrough. Private. No account required.';

  @override
  String get landing_askAssistant => 'Ask the assistant';

  @override
  String get landing_askAssistantHint =>
      'Describe your situation in your own words.';

  @override
  String get landing_browsePrograms => 'Browse programs';

  @override
  String get landing_browseProgramsHint =>
      'Search the official program catalog.';

  @override
  String get landing_howItWorksTitle => 'How it works';

  @override
  String get landing_howItWorksLede =>
      'Three steps that respect your time and your situation.';

  @override
  String get landing_step1Title => 'Tell us what is going on';

  @override
  String get landing_step1Body =>
      'Type a sentence about your situation, or answer a few short yes-or-no questions. We translate your story into a structured screen.';

  @override
  String get landing_step2Title => 'We match against official rules';

  @override
  String get landing_step2Body =>
      'Each program is scored against the latest federal or state eligibility rules. Where data is missing, we say so plainly.';

  @override
  String get landing_step3Title => 'Walk away with a plan';

  @override
  String get landing_step3Body =>
      'Get a checklist of next steps, the documents you will need, and direct links to the official application pages.';

  @override
  String get landing_trustTitle => 'Why people trust the results';

  @override
  String get landing_trustOfficial => 'Sourced from official .gov documents';

  @override
  String get landing_trustOfficialBody =>
      'Every match is grounded in published agency rules and links back to the original page.';

  @override
  String get landing_trustPrivate => 'Private by default';

  @override
  String get landing_trustPrivateBody =>
      'Your answers stay in your browser session. We never sell, share, or sign you in.';

  @override
  String get landing_trustExplainable => 'Explainable confidence';

  @override
  String get landing_trustExplainableBody =>
      'We show why each program matched, what is missing, and how confident the screen is.';

  @override
  String get landing_comingSoon => 'Coming soon';

  @override
  String get landing_comingSoonBody =>
      'This part of Benefits Digger is being built right now. Check back shortly.';

  @override
  String get landing_notFoundTitle => 'We could not find that page';

  @override
  String get landing_notFoundBody =>
      'The page you are looking for has moved or does not exist.';

  @override
  String get landing_notFoundCta => 'Back to home';

  @override
  String get landing_errorTitle => 'Something went wrong';

  @override
  String get landing_errorBody =>
      'An unexpected error happened while loading this page. Try again, and if it keeps happening, the team has been notified.';

  @override
  String get landing_errorRetry => 'Try again';

  @override
  String get landing_loading => 'Loading...';

  @override
  String get footer_disclaimer =>
      'Benefits Digger is an independent screening tool. It is not affiliated with, endorsed by, or operated by the U.S. federal government or any state agency. Final eligibility is determined by the agency that runs the benefit.';

  @override
  String get footer_privacy => 'Privacy';

  @override
  String get footer_sources => 'Official sources';

  @override
  String get footer_about => 'About';

  @override
  String footer_copyright(String year) {
    return '$year Benefits Digger';
  }

  @override
  String get helpBot_title => 'Help with this app';

  @override
  String get helpBot_placeholder => 'Ask how to use the app…';

  @override
  String get helpBot_openLabel => 'Get help with this app';

  @override
  String get helpBot_emptyState =>
      'Ask how to use a feature, navigate to a page, or understand a screening question. (For benefits questions, use the main chat.)';

  @override
  String get helpBot_streaming => 'Thinking…';

  @override
  String get helpBot_error =>
      'Couldn\'t reach the help assistant. Try again in a moment.';

  @override
  String get helpBot_close => 'Close help';
}
