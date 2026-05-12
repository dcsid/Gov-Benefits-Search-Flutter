import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('ko'),
    Locale('ru'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// nav.home
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get nav_home;

  /// nav.dashboard
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get nav_dashboard;

  /// nav.results
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get nav_results;

  /// nav.whatif
  ///
  /// In en, this message translates to:
  /// **'What-If Lab'**
  String get nav_whatif;

  /// nav.explorer
  ///
  /// In en, this message translates to:
  /// **'Explorer'**
  String get nav_explorer;

  /// page.homeTitle
  ///
  /// In en, this message translates to:
  /// **'Benefits Digger'**
  String get page_homeTitle;

  /// page.dashboardTitle
  ///
  /// In en, this message translates to:
  /// **'Planning Dashboard - Benefits Digger'**
  String get page_dashboardTitle;

  /// page.resultsTitle
  ///
  /// In en, this message translates to:
  /// **'Results - Benefits Digger'**
  String get page_resultsTitle;

  /// page.whatifTitle
  ///
  /// In en, this message translates to:
  /// **'What-If Lab - Benefits Digger'**
  String get page_whatifTitle;

  /// page.explorerTitle
  ///
  /// In en, this message translates to:
  /// **'Program Explorer - Benefits Digger'**
  String get page_explorerTitle;

  /// app.eyebrow
  ///
  /// In en, this message translates to:
  /// **'Benefits Digger'**
  String get app_eyebrow;

  /// app.headline
  ///
  /// In en, this message translates to:
  /// **'Plan, compare, and pursue benefits with official government evidence.'**
  String get app_headline;

  /// app.lede
  ///
  /// In en, this message translates to:
  /// **'Screen benefits, compare what-if scenarios, browse the official catalog, and leave with a clearer action plan grounded in government sources.'**
  String get app_lede;

  /// home.startScreening
  ///
  /// In en, this message translates to:
  /// **'Start Screening'**
  String get home_startScreening;

  /// home.trustPrivate
  ///
  /// In en, this message translates to:
  /// **'Your data is private and never stored.'**
  String get home_trustPrivate;

  /// home.trustSources
  ///
  /// In en, this message translates to:
  /// **'Data sourced directly from official government programs.'**
  String get home_trustSources;

  /// home.scope
  ///
  /// In en, this message translates to:
  /// **'Scope'**
  String get home_scope;

  /// home.scopeBoth
  ///
  /// In en, this message translates to:
  /// **'Federal and state'**
  String get home_scopeBoth;

  /// home.scopeFederal
  ///
  /// In en, this message translates to:
  /// **'Federal only'**
  String get home_scopeFederal;

  /// home.scopeState
  ///
  /// In en, this message translates to:
  /// **'State only'**
  String get home_scopeState;

  /// home.state
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get home_state;

  /// home.chooseState
  ///
  /// In en, this message translates to:
  /// **'Choose a state'**
  String get home_chooseState;

  /// home.breadth
  ///
  /// In en, this message translates to:
  /// **'Breadth'**
  String get home_breadth;

  /// home.breadthFocused
  ///
  /// In en, this message translates to:
  /// **'Focused'**
  String get home_breadthFocused;

  /// home.breadthBalanced
  ///
  /// In en, this message translates to:
  /// **'Balanced'**
  String get home_breadthBalanced;

  /// home.breadthBroad
  ///
  /// In en, this message translates to:
  /// **'Broad'**
  String get home_breadthBroad;

  /// home.depth
  ///
  /// In en, this message translates to:
  /// **'Depth'**
  String get home_depth;

  /// home.depthLight
  ///
  /// In en, this message translates to:
  /// **'High-level'**
  String get home_depthLight;

  /// home.depthStandard
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get home_depthStandard;

  /// home.depthDetailed
  ///
  /// In en, this message translates to:
  /// **'Detailed'**
  String get home_depthDetailed;

  /// home.categories
  ///
  /// In en, this message translates to:
  /// **'Benefit categories'**
  String get home_categories;

  /// home.categoriesHint
  ///
  /// In en, this message translates to:
  /// **'Select at least one category to find benefits you may qualify for and information on how to apply.'**
  String get home_categoriesHint;

  /// home.selectAll
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get home_selectAll;

  /// home.clear
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get home_clear;

  /// home.apply
  ///
  /// In en, this message translates to:
  /// **'Apply selections'**
  String get home_apply;

  /// home.reset
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get home_reset;

  /// home.refreshSources
  ///
  /// In en, this message translates to:
  /// **'Refresh Official Sources'**
  String get home_refreshSources;

  /// home.questionFlow
  ///
  /// In en, this message translates to:
  /// **'Question Flow'**
  String get home_questionFlow;

  /// home.questionEmpty
  ///
  /// In en, this message translates to:
  /// **'Start a session to begin the screener.'**
  String get home_questionEmpty;

  /// home.saveAnswer
  ///
  /// In en, this message translates to:
  /// **'Save Answer'**
  String get home_saveAnswer;

  /// home.backQuestion
  ///
  /// In en, this message translates to:
  /// **'Back to previous question'**
  String get home_backQuestion;

  /// home.showResults
  ///
  /// In en, this message translates to:
  /// **'Show Results Now'**
  String get home_showResults;

  /// home.reviewQueue
  ///
  /// In en, this message translates to:
  /// **'Review Queue'**
  String get home_reviewQueue;

  /// home.refreshQueue
  ///
  /// In en, this message translates to:
  /// **'Refresh Queue'**
  String get home_refreshQueue;

  /// home.noReviewTasks
  ///
  /// In en, this message translates to:
  /// **'No review tasks yet.'**
  String get home_noReviewTasks;

  /// home.breadthApprox
  ///
  /// In en, this message translates to:
  /// **'{description} (~{count} questions)'**
  String home_breadthApprox(String description, String count);

  /// home.depthApprox
  ///
  /// In en, this message translates to:
  /// **'{description}'**
  String home_depthApprox(String description);

  /// home.noMoreQuestions
  ///
  /// In en, this message translates to:
  /// **'No more questions queued. Results are ready.'**
  String get home_noMoreQuestions;

  /// home.noProgramsFound
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any benefit programs matching your selection. Try broadening your categories or selecting a different state.'**
  String get home_noProgramsFound;

  /// home.selectCategory
  ///
  /// In en, this message translates to:
  /// **'Select at least one category before applying your selections.'**
  String get home_selectCategory;

  /// home.chooseScope
  ///
  /// In en, this message translates to:
  /// **'Choose a screening scope before starting your session.'**
  String get home_chooseScope;

  /// home.chooseStateMsg
  ///
  /// In en, this message translates to:
  /// **'Please choose a state before starting state or combined screening.'**
  String get home_chooseStateMsg;

  /// home.chooseOne
  ///
  /// In en, this message translates to:
  /// **'Choose one'**
  String get home_chooseOne;

  /// home.searching
  ///
  /// In en, this message translates to:
  /// **'Searching...'**
  String get home_searching;

  /// home.creatingSession
  ///
  /// In en, this message translates to:
  /// **'Creating session...'**
  String get home_creatingSession;

  /// home.creatingSessionState
  ///
  /// In en, this message translates to:
  /// **'Creating session and loading state benefits...'**
  String get home_creatingSessionState;

  /// home.sessionLive
  ///
  /// In en, this message translates to:
  /// **'Session {sessionId} is live.'**
  String home_sessionLive(String sessionId);

  /// home.sessionError
  ///
  /// In en, this message translates to:
  /// **'Could not start session: {error}'**
  String home_sessionError(String error);

  /// home.answerRequired
  ///
  /// In en, this message translates to:
  /// **'Please choose an answer before continuing.'**
  String get home_answerRequired;

  /// home.answerSaved
  ///
  /// In en, this message translates to:
  /// **'Answer saved.'**
  String get home_answerSaved;

  /// home.answerError
  ///
  /// In en, this message translates to:
  /// **'Could not save answer: {error}'**
  String home_answerError(String error);

  /// home.resultsRefreshed
  ///
  /// In en, this message translates to:
  /// **'Results refreshed.'**
  String get home_resultsRefreshed;

  /// home.refreshingOfficialSources
  ///
  /// In en, this message translates to:
  /// **'Refreshing official sources...'**
  String get home_refreshingOfficialSources;

  /// home.officialSourcesRefreshed
  ///
  /// In en, this message translates to:
  /// **'Official sources refreshed.'**
  String get home_officialSourcesRefreshed;

  /// home.syncSummary
  ///
  /// In en, this message translates to:
  /// **'Official sources refreshed. Crawled {crawled} program sites and added {added} direct government page sources.'**
  String home_syncSummary(String added, String crawled);

  /// home.syncFailed
  ///
  /// In en, this message translates to:
  /// **'Sync failed: {error}'**
  String home_syncFailed(String error);

  /// home.sensitivity
  ///
  /// In en, this message translates to:
  /// **'{level} sensitivity'**
  String home_sensitivity(String level);

  /// home.sourceLabel
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get home_sourceLabel;

  /// home.reviewTaskMeta
  ///
  /// In en, this message translates to:
  /// **'{diffType} · materiality {score}'**
  String home_reviewTaskMeta(String score, String diffType);

  /// home.adminKey
  ///
  /// In en, this message translates to:
  /// **'Admin access key'**
  String get home_adminKey;

  /// home.adminPlaceholder
  ///
  /// In en, this message translates to:
  /// **'Only needed when admin protection is enabled'**
  String get home_adminPlaceholder;

  /// home.adminHelp
  ///
  /// In en, this message translates to:
  /// **'Used only for review queue and source refresh actions. Stored in this browser tab until you clear it.'**
  String get home_adminHelp;

  /// home.saveKey
  ///
  /// In en, this message translates to:
  /// **'Save key'**
  String get home_saveKey;

  /// home.clearKey
  ///
  /// In en, this message translates to:
  /// **'Clear key'**
  String get home_clearKey;

  /// home.adminSaved
  ///
  /// In en, this message translates to:
  /// **'Admin key saved for this browser tab.'**
  String get home_adminSaved;

  /// home.adminCleared
  ///
  /// In en, this message translates to:
  /// **'Admin key cleared.'**
  String get home_adminCleared;

  /// home.lifeIntakePill
  ///
  /// In en, this message translates to:
  /// **'Life-event intake'**
  String get home_lifeIntakePill;

  /// home.lifeIntakeTitle
  ///
  /// In en, this message translates to:
  /// **'Describe what is going on'**
  String get home_lifeIntakeTitle;

  /// home.lifeIntakeLabel
  ///
  /// In en, this message translates to:
  /// **'Tell us about the struggle in your own words'**
  String get home_lifeIntakeLabel;

  /// home.lifeIntakePlaceholder
  ///
  /// In en, this message translates to:
  /// **'Example: I lost my job, I’m behind on rent, and I’m trying to figure out whether there is help for food and medical coverage.'**
  String get home_lifeIntakePlaceholder;

  /// home.lifeIntakeHint
  ///
  /// In en, this message translates to:
  /// **'You do not need to classify the problem first. We will turn your description into suggested categories, likely facts, and the next questions that matter most.'**
  String get home_lifeIntakeHint;

  /// home.lifeIntakeAnalyze
  ///
  /// In en, this message translates to:
  /// **'Analyze my situation'**
  String get home_lifeIntakeAnalyze;

  /// home.lifeIntakeClear
  ///
  /// In en, this message translates to:
  /// **'Clear intake'**
  String get home_lifeIntakeClear;

  /// home.lifeSummaryTitle
  ///
  /// In en, this message translates to:
  /// **'What I heard'**
  String get home_lifeSummaryTitle;

  /// home.lifeSuggestedScope
  ///
  /// In en, this message translates to:
  /// **'Suggested scope'**
  String get home_lifeSuggestedScope;

  /// home.lifeSuggestedState
  ///
  /// In en, this message translates to:
  /// **'Suggested state'**
  String get home_lifeSuggestedState;

  /// home.lifeCategoriesTitle
  ///
  /// In en, this message translates to:
  /// **'Suggested benefit areas'**
  String get home_lifeCategoriesTitle;

  /// home.lifeFactsTitle
  ///
  /// In en, this message translates to:
  /// **'Structured facts so far'**
  String get home_lifeFactsTitle;

  /// home.lifeMissingTitle
  ///
  /// In en, this message translates to:
  /// **'Still useful to ask'**
  String get home_lifeMissingTitle;

  /// home.lifeApply
  ///
  /// In en, this message translates to:
  /// **'Use these suggestions in the screener'**
  String get home_lifeApply;

  /// home.lifeStart
  ///
  /// In en, this message translates to:
  /// **'Start screening from chat'**
  String get home_lifeStart;

  /// home.lifeChatTitle
  ///
  /// In en, this message translates to:
  /// **'Benefits assistant'**
  String get home_lifeChatTitle;

  /// home.lifeAssistantName
  ///
  /// In en, this message translates to:
  /// **'Zobo'**
  String get home_lifeAssistantName;

  /// home.lifeChatLauncherLabel
  ///
  /// In en, this message translates to:
  /// **'Open Zobo assistant'**
  String get home_lifeChatLauncherLabel;

  /// home.lifeChatClose
  ///
  /// In en, this message translates to:
  /// **'Minimize assistant'**
  String get home_lifeChatClose;

  /// home.lifeChatMinimize
  ///
  /// In en, this message translates to:
  /// **'Minimize'**
  String get home_lifeChatMinimize;

  /// home.lifeChatHint
  ///
  /// In en, this message translates to:
  /// **'Tell me what is going on, and I will ask one short follow-up at a time.'**
  String get home_lifeChatHint;

  /// home.lifeChatEmpty
  ///
  /// In en, this message translates to:
  /// **'Start by describing what you are dealing with, and I will translate it into benefit areas and next questions.'**
  String get home_lifeChatEmpty;

  /// home.lifeChatInputLabel
  ///
  /// In en, this message translates to:
  /// **'Reply to the assistant'**
  String get home_lifeChatInputLabel;

  /// home.lifeChatWelcome
  ///
  /// In en, this message translates to:
  /// **'Hi. I’m Zobo. Tell me a little about what’s going on, and I’ll help you sort through the next steps.'**
  String get home_lifeChatWelcome;

  /// home.lifeChatWelcomeSession
  ///
  /// In en, this message translates to:
  /// **'Hi. I’m Zobo. I can stay with you while you review this session. Ask me to explain a result, a missing fact, or what to do next.'**
  String get home_lifeChatWelcomeSession;

  /// home.lifeChatPlaceholder
  ///
  /// In en, this message translates to:
  /// **'Try: I lost my job, I am behind on rent, and I need help with food.'**
  String get home_lifeChatPlaceholder;

  /// home.lifeChatPlaceholderYesNo
  ///
  /// In en, this message translates to:
  /// **'A short yes or no is enough here.'**
  String get home_lifeChatPlaceholderYesNo;

  /// home.lifeChatPlaceholderState
  ///
  /// In en, this message translates to:
  /// **'Reply with a state like CA, California, or New York.'**
  String get home_lifeChatPlaceholderState;

  /// home.lifeChatSend
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get home_lifeChatSend;

  /// home.lifeChatSending
  ///
  /// In en, this message translates to:
  /// **'Sending...'**
  String get home_lifeChatSending;

  /// home.lifeChatQuickReplies
  ///
  /// In en, this message translates to:
  /// **'Quick replies'**
  String get home_lifeChatQuickReplies;

  /// home.lifeChatNavigate
  ///
  /// In en, this message translates to:
  /// **'You may also want to go to'**
  String get home_lifeChatNavigate;

  /// home.navAction.use_screener
  ///
  /// In en, this message translates to:
  /// **'Use the screener'**
  String get home_navAction_use_screener;

  /// home.navAction.start_screening
  ///
  /// In en, this message translates to:
  /// **'Start screening'**
  String get home_navAction_start_screening;

  /// home.navAction.open_explorer
  ///
  /// In en, this message translates to:
  /// **'Open Program Explorer'**
  String get home_navAction_open_explorer;

  /// home.navAction.open_results
  ///
  /// In en, this message translates to:
  /// **'Open Results'**
  String get home_navAction_open_results;

  /// home.navAction.open_dashboard
  ///
  /// In en, this message translates to:
  /// **'Open Dashboard'**
  String get home_navAction_open_dashboard;

  /// home.lifeChatUserLabel
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get home_lifeChatUserLabel;

  /// home.lifeChatStatusEmpty
  ///
  /// In en, this message translates to:
  /// **'Tell me what is going on to get started.'**
  String get home_lifeChatStatusEmpty;

  /// home.lifeChatStatusWaitingDetails
  ///
  /// In en, this message translates to:
  /// **'Tell me a little more so I can point you in the right direction.'**
  String get home_lifeChatStatusWaitingDetails;

  /// home.lifeChatStatusThinking
  ///
  /// In en, this message translates to:
  /// **'Thinking through your update...'**
  String get home_lifeChatStatusThinking;

  /// home.lifeChatStatusReady
  ///
  /// In en, this message translates to:
  /// **'I have one quick follow-up ready.'**
  String get home_lifeChatStatusReady;

  /// home.lifeChatStatusDone
  ///
  /// In en, this message translates to:
  /// **'I have enough to move forward.'**
  String get home_lifeChatStatusDone;

  /// home.lifeNoCategories
  ///
  /// In en, this message translates to:
  /// **'No benefit areas inferred yet.'**
  String get home_lifeNoCategories;

  /// home.lifeNoFacts
  ///
  /// In en, this message translates to:
  /// **'No structured facts captured yet.'**
  String get home_lifeNoFacts;

  /// home.lifeNoMissing
  ///
  /// In en, this message translates to:
  /// **'No critical follow-up questions are missing right now.'**
  String get home_lifeNoMissing;

  /// home.lifeApplyDone
  ///
  /// In en, this message translates to:
  /// **'Assistant suggestions copied into the screener controls.'**
  String get home_lifeApplyDone;

  /// home.lifeStarted
  ///
  /// In en, this message translates to:
  /// **'Started screening from the assistant\'s suggestions.'**
  String get home_lifeStarted;

  /// home.lifeDescriptionRequired
  ///
  /// In en, this message translates to:
  /// **'Tell me what is going on so I can help.'**
  String get home_lifeDescriptionRequired;

  /// home.lifeAnalyzing
  ///
  /// In en, this message translates to:
  /// **'Analyzing your situation...'**
  String get home_lifeAnalyzing;

  /// home.lifeAnalyzed
  ///
  /// In en, this message translates to:
  /// **'Life-event intake updated.'**
  String get home_lifeAnalyzed;

  /// home.lifeInterpretError
  ///
  /// In en, this message translates to:
  /// **'Could not analyze the intake: {error}'**
  String home_lifeInterpretError(String error);

  /// home.lifeProbeUpdated
  ///
  /// In en, this message translates to:
  /// **'Follow-up details added.'**
  String get home_lifeProbeUpdated;

  /// home.lifeProbeError
  ///
  /// In en, this message translates to:
  /// **'Could not process that follow-up: {error}'**
  String home_lifeProbeError(String error);

  /// results.title
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get results_title;

  /// results.liveMatches
  ///
  /// In en, this message translates to:
  /// **'{count} live matches'**
  String results_liveMatches(String count);

  /// results.print
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get results_print;

  /// results.redoScreening
  ///
  /// In en, this message translates to:
  /// **'Redo Screening'**
  String get results_redoScreening;

  /// results.downloadPdf
  ///
  /// In en, this message translates to:
  /// **'Download PDF'**
  String get results_downloadPdf;

  /// results.scrollUp
  ///
  /// In en, this message translates to:
  /// **'Scroll up'**
  String get results_scrollUp;

  /// results.scrollDown
  ///
  /// In en, this message translates to:
  /// **'Scroll down'**
  String get results_scrollDown;

  /// results.generatingPdf
  ///
  /// In en, this message translates to:
  /// **'Generating...'**
  String get results_generatingPdf;

  /// results.noSession
  ///
  /// In en, this message translates to:
  /// **'No active session. <a href=\"/\">Start a screening</a> first.'**
  String get results_noSession;

  /// results.federalTitle
  ///
  /// In en, this message translates to:
  /// **'Federal Results'**
  String get results_federalTitle;

  /// results.stateTitle
  ///
  /// In en, this message translates to:
  /// **'State Results'**
  String get results_stateTitle;

  /// results.noFederal
  ///
  /// In en, this message translates to:
  /// **'No federal results yet. Answer more questions to improve matches.'**
  String get results_noFederal;

  /// results.noState
  ///
  /// In en, this message translates to:
  /// **'No state results yet. Answer more questions to improve matches.'**
  String get results_noState;

  /// results.federalOnlyFinished
  ///
  /// In en, this message translates to:
  /// **'This is a federal-only session, so no state results are shown.'**
  String get results_federalOnlyFinished;

  /// results.federalOnlyHidden
  ///
  /// In en, this message translates to:
  /// **'State results are hidden while Federal only scope is selected.'**
  String get results_federalOnlyHidden;

  /// results.loadError
  ///
  /// In en, this message translates to:
  /// **'Could not load results: {error}'**
  String results_loadError(String error);

  /// dashboard.title
  ///
  /// In en, this message translates to:
  /// **'Planning Dashboard'**
  String get dashboard_title;

  /// dashboard.noSession
  ///
  /// In en, this message translates to:
  /// **'No active session'**
  String get dashboard_noSession;

  /// dashboard.empty
  ///
  /// In en, this message translates to:
  /// **'No active session yet. Start a session to unlock planning summary, action steps, and missing-fact analysis.'**
  String get dashboard_empty;

  /// dashboard.goHome
  ///
  /// In en, this message translates to:
  /// **'Go to Home to start a session'**
  String get dashboard_goHome;

  /// dashboard.downloadPdf
  ///
  /// In en, this message translates to:
  /// **'Download PDF'**
  String get dashboard_downloadPdf;

  /// dashboard.generatingPdf
  ///
  /// In en, this message translates to:
  /// **'Generating...'**
  String get dashboard_generatingPdf;

  /// dashboard.benefitStack
  ///
  /// In en, this message translates to:
  /// **'Benefit stack'**
  String get dashboard_benefitStack;

  /// dashboard.missingFacts
  ///
  /// In en, this message translates to:
  /// **'Top missing facts'**
  String get dashboard_missingFacts;

  /// dashboard.actions
  ///
  /// In en, this message translates to:
  /// **'Recommended next actions'**
  String get dashboard_actions;

  /// dashboard.sourceHub
  ///
  /// In en, this message translates to:
  /// **'Official source hub'**
  String get dashboard_sourceHub;

  /// dashboard.docChecklist
  ///
  /// In en, this message translates to:
  /// **'Document checklist'**
  String get dashboard_docChecklist;

  /// dashboard.planningNotes
  ///
  /// In en, this message translates to:
  /// **'Planning notes'**
  String get dashboard_planningNotes;

  /// dashboard.likelyPrograms
  ///
  /// In en, this message translates to:
  /// **'Likely programs'**
  String get dashboard_likelyPrograms;

  /// dashboard.possiblePrograms
  ///
  /// In en, this message translates to:
  /// **'Possible programs'**
  String get dashboard_possiblePrograms;

  /// dashboard.answeredQuestions
  ///
  /// In en, this message translates to:
  /// **'Answered questions'**
  String get dashboard_answeredQuestions;

  /// dashboard.avgRuleCoverage
  ///
  /// In en, this message translates to:
  /// **'Average rule coverage'**
  String get dashboard_avgRuleCoverage;

  /// dashboard.estMonthly
  ///
  /// In en, this message translates to:
  /// **'Est. monthly benefits'**
  String get dashboard_estMonthly;

  /// dashboard.noBenefitStack
  ///
  /// In en, this message translates to:
  /// **'No benefit stack yet.'**
  String get dashboard_noBenefitStack;

  /// dashboard.noMissingFacts
  ///
  /// In en, this message translates to:
  /// **'No missing-fact hotspots right now.'**
  String get dashboard_noMissingFacts;

  /// dashboard.noActions
  ///
  /// In en, this message translates to:
  /// **'No action steps yet.'**
  String get dashboard_noActions;

  /// dashboard.noSourceHub
  ///
  /// In en, this message translates to:
  /// **'No official source hub yet.'**
  String get dashboard_noSourceHub;

  /// dashboard.noDocuments
  ///
  /// In en, this message translates to:
  /// **'No documents required yet. Complete screening to see what you need.'**
  String get dashboard_noDocuments;

  /// dashboard.noPlanningNotes
  ///
  /// In en, this message translates to:
  /// **'Planning notes will appear after your session has results.'**
  String get dashboard_noPlanningNotes;

  /// dashboard.loadError
  ///
  /// In en, this message translates to:
  /// **'Could not load plan: {error}'**
  String dashboard_loadError(String error);

  /// dashboard.noSessionLink
  ///
  /// In en, this message translates to:
  /// **'No active session. <a href=\"/\">Start a screening</a> first.'**
  String get dashboard_noSessionLink;

  /// dashboard.controlsPill
  ///
  /// In en, this message translates to:
  /// **'Breadth {breadthLabel} ({breadthPercent}%) · Depth {depthLabel} ({depthPercent}%)'**
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  );

  /// dashboard.likely
  ///
  /// In en, this message translates to:
  /// **'likely'**
  String get dashboard_likely;

  /// dashboard.possible
  ///
  /// In en, this message translates to:
  /// **'possible'**
  String get dashboard_possible;

  /// dashboard.noTopPrograms
  ///
  /// In en, this message translates to:
  /// **'No top programs yet.'**
  String get dashboard_noTopPrograms;

  /// dashboard.confidence
  ///
  /// In en, this message translates to:
  /// **'confidence {value}/100'**
  String dashboard_confidence(String value);

  /// dashboard.affects
  ///
  /// In en, this message translates to:
  /// **'Affects {count} program matches.'**
  String dashboard_affects(String count);

  /// dashboard.neededFor
  ///
  /// In en, this message translates to:
  /// **'Needed for: {programs}'**
  String dashboard_neededFor(String programs);

  /// whatif.title
  ///
  /// In en, this message translates to:
  /// **'What-If Lab'**
  String get whatif_title;

  /// whatif.pill
  ///
  /// In en, this message translates to:
  /// **'Scenario compare'**
  String get whatif_pill;

  /// whatif.noSession
  ///
  /// In en, this message translates to:
  /// **'No active session. <a href=\"/\">Start a screening</a> first.'**
  String get whatif_noSession;

  /// whatif.quickStartIntro
  ///
  /// In en, this message translates to:
  /// **'No active session. Start one here to run scenarios:'**
  String get whatif_quickStartIntro;

  /// whatif.scopeLabel
  ///
  /// In en, this message translates to:
  /// **'Scope'**
  String get whatif_scopeLabel;

  /// whatif.stateLabel
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get whatif_stateLabel;

  /// whatif.categoriesLabel
  ///
  /// In en, this message translates to:
  /// **'Benefit categories'**
  String get whatif_categoriesLabel;

  /// whatif.startSession
  ///
  /// In en, this message translates to:
  /// **'Start Session'**
  String get whatif_startSession;

  /// whatif.description
  ///
  /// In en, this message translates to:
  /// **'Run scenario comparisons without changing your saved answers. These presets show how the result set changes if a life fact shifts.'**
  String get whatif_description;

  /// whatif.startThenRun
  ///
  /// In en, this message translates to:
  /// **'Start a session, then run a scenario.'**
  String get whatif_startThenRun;

  /// whatif.noResult
  ///
  /// In en, this message translates to:
  /// **'No scenario result returned.'**
  String get whatif_noResult;

  /// whatif.scenarioCompare
  ///
  /// In en, this message translates to:
  /// **'Scenario comparison'**
  String get whatif_scenarioCompare;

  /// whatif.likelyDelta
  ///
  /// In en, this message translates to:
  /// **'Likely delta'**
  String get whatif_likelyDelta;

  /// whatif.possibleDelta
  ///
  /// In en, this message translates to:
  /// **'Possible delta'**
  String get whatif_possibleDelta;

  /// whatif.federalDelta
  ///
  /// In en, this message translates to:
  /// **'Federal delta'**
  String get whatif_federalDelta;

  /// whatif.stateDelta
  ///
  /// In en, this message translates to:
  /// **'State delta'**
  String get whatif_stateDelta;

  /// whatif.newPrograms
  ///
  /// In en, this message translates to:
  /// **'New or unlocked programs'**
  String get whatif_newPrograms;

  /// whatif.improvedPrograms
  ///
  /// In en, this message translates to:
  /// **'Improved programs'**
  String get whatif_improvedPrograms;

  /// whatif.noNewMatches
  ///
  /// In en, this message translates to:
  /// **'No new positive matches in this scenario.'**
  String get whatif_noNewMatches;

  /// whatif.noImprovements
  ///
  /// In en, this message translates to:
  /// **'No status improvements in this scenario.'**
  String get whatif_noImprovements;

  /// whatif.toStatus
  ///
  /// In en, this message translates to:
  /// **'to'**
  String get whatif_toStatus;

  /// whatif.startFirst
  ///
  /// In en, this message translates to:
  /// **'Start a session before running scenarios.'**
  String get whatif_startFirst;

  /// whatif.updated
  ///
  /// In en, this message translates to:
  /// **'Scenario comparison updated.'**
  String get whatif_updated;

  /// whatif.failed
  ///
  /// In en, this message translates to:
  /// **'Scenario compare failed: {error}'**
  String whatif_failed(String error);

  /// explorer.title
  ///
  /// In en, this message translates to:
  /// **'Program Explorer'**
  String get explorer_title;

  /// explorer.refresh
  ///
  /// In en, this message translates to:
  /// **'Refresh Explorer'**
  String get explorer_refresh;

  /// explorer.description
  ///
  /// In en, this message translates to:
  /// **'Hybrid Explorer combines plain-English need descriptions with the official catalog. It may use Gemini for interpretation when configured, and always falls back to grounded local matching.'**
  String get explorer_description;

  /// explorer.scope
  ///
  /// In en, this message translates to:
  /// **'Scope'**
  String get explorer_scope;

  /// explorer.state
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get explorer_state;

  /// explorer.describe
  ///
  /// In en, this message translates to:
  /// **'Describe what you need'**
  String get explorer_describe;

  /// explorer.describePlaceholder
  ///
  /// In en, this message translates to:
  /// **'Example: I lost a family member in California and need help with funeral costs and survivor benefits.'**
  String get explorer_describePlaceholder;

  /// explorer.search
  ///
  /// In en, this message translates to:
  /// **'Exact keyword search'**
  String get explorer_search;

  /// explorer.placeholder
  ///
  /// In en, this message translates to:
  /// **'Try retirement, disability, funeral, veterans...'**
  String get explorer_placeholder;

  /// explorer.submit
  ///
  /// In en, this message translates to:
  /// **'Run hybrid search'**
  String get explorer_submit;

  /// explorer.empty
  ///
  /// In en, this message translates to:
  /// **'Use the explorer to browse the current official program catalog.'**
  String get explorer_empty;

  /// explorer.noMatch
  ///
  /// In en, this message translates to:
  /// **'No programs matched this search. Try a broader description or remove a filter.'**
  String get explorer_noMatch;

  /// explorer.minChars
  ///
  /// In en, this message translates to:
  /// **'Enter at least 2 characters for exact keyword search.'**
  String get explorer_minChars;

  /// explorer.openOfficial
  ///
  /// In en, this message translates to:
  /// **'Open official government page'**
  String get explorer_openOfficial;

  /// explorer.failed
  ///
  /// In en, this message translates to:
  /// **'Explorer failed: {error}'**
  String explorer_failed(String error);

  /// explorer.methodGemini
  ///
  /// In en, this message translates to:
  /// **'Gemini + grounded catalog'**
  String get explorer_methodGemini;

  /// explorer.methodHeuristic
  ///
  /// In en, this message translates to:
  /// **'Grounded catalog + local interpretation'**
  String get explorer_methodHeuristic;

  /// explorer.interpretationTitle
  ///
  /// In en, this message translates to:
  /// **'Search Interpretation'**
  String get explorer_interpretationTitle;

  /// explorer.needAreas
  ///
  /// In en, this message translates to:
  /// **'Need areas'**
  String get explorer_needAreas;

  /// explorer.stateLabel
  ///
  /// In en, this message translates to:
  /// **'State:'**
  String get explorer_stateLabel;

  /// explorer.searchTerms
  ///
  /// In en, this message translates to:
  /// **'Search terms:'**
  String get explorer_searchTerms;

  /// explorer.score
  ///
  /// In en, this message translates to:
  /// **'Score {score}'**
  String explorer_score(String score);

  /// explorer.browseSummary
  ///
  /// In en, this message translates to:
  /// **'Browsing the official program catalog.'**
  String get explorer_browseSummary;

  /// explorer.localizedSummary
  ///
  /// In en, this message translates to:
  /// **'Showing how your need was interpreted from the local grounded catalog.'**
  String get explorer_localizedSummary;

  /// card.confidence
  ///
  /// In en, this message translates to:
  /// **'Confidence'**
  String get card_confidence;

  /// card.clickExpand
  ///
  /// In en, this message translates to:
  /// **'(click to expand)'**
  String get card_clickExpand;

  /// card.eligibilityCriteria
  ///
  /// In en, this message translates to:
  /// **'Eligibility Criteria'**
  String get card_eligibilityCriteria;

  /// card.criteriaMet
  ///
  /// In en, this message translates to:
  /// **'met'**
  String get card_criteriaMet;

  /// card.met
  ///
  /// In en, this message translates to:
  /// **'met'**
  String get card_met;

  /// card.notMet
  ///
  /// In en, this message translates to:
  /// **'not met'**
  String get card_notMet;

  /// card.unanswered
  ///
  /// In en, this message translates to:
  /// **'unanswered'**
  String get card_unanswered;

  /// card.amount
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get card_amount;

  /// card.amountEstimated
  ///
  /// In en, this message translates to:
  /// **' (estimated)'**
  String get card_amountEstimated;

  /// card.whyMatched
  ///
  /// In en, this message translates to:
  /// **'Why it matched'**
  String get card_whyMatched;

  /// card.noMatchedReasons
  ///
  /// In en, this message translates to:
  /// **'No matched reasons yet.'**
  String get card_noMatchedReasons;

  /// card.missingFacts
  ///
  /// In en, this message translates to:
  /// **'What is still missing'**
  String get card_missingFacts;

  /// card.noMissingFacts
  ///
  /// In en, this message translates to:
  /// **'No missing facts for this current pass.'**
  String get card_noMissingFacts;

  /// card.documentsNeeded
  ///
  /// In en, this message translates to:
  /// **'Documents needed'**
  String get card_documentsNeeded;

  /// card.noDocuments
  ///
  /// In en, this message translates to:
  /// **'No document checklist available for this program.'**
  String get card_noDocuments;

  /// card.dataGathered
  ///
  /// In en, this message translates to:
  /// **'Data gathered from official government websites'**
  String get card_dataGathered;

  /// card.noSources
  ///
  /// In en, this message translates to:
  /// **'No official government sources attached.'**
  String get card_noSources;

  /// card.howToGet
  ///
  /// In en, this message translates to:
  /// **'How to get this benefit'**
  String get card_howToGet;

  /// card.noApplicationPath
  ///
  /// In en, this message translates to:
  /// **'No official application path is available for this result yet.'**
  String get card_noApplicationPath;

  /// card.openOfficial
  ///
  /// In en, this message translates to:
  /// **'Open official government page'**
  String get card_openOfficial;

  /// card.useSourcesBelow
  ///
  /// In en, this message translates to:
  /// **'Use the official sources below.'**
  String get card_useSourcesBelow;

  /// card.notAvailable
  ///
  /// In en, this message translates to:
  /// **'Not available'**
  String get card_notAvailable;

  /// card.unknownAgency
  ///
  /// In en, this message translates to:
  /// **'Unknown agency'**
  String get card_unknownAgency;

  /// card.noSummary
  ///
  /// In en, this message translates to:
  /// **'No summary available.'**
  String get card_noSummary;

  /// card.noBreakdown
  ///
  /// In en, this message translates to:
  /// **'No breakdown available.'**
  String get card_noBreakdown;

  /// card.verified
  ///
  /// In en, this message translates to:
  /// **'verified {date}'**
  String card_verified(String date);

  /// category.children_families
  ///
  /// In en, this message translates to:
  /// **'Children and families'**
  String get category_children_families;

  /// category.death
  ///
  /// In en, this message translates to:
  /// **'Death'**
  String get category_death;

  /// category.disabilities
  ///
  /// In en, this message translates to:
  /// **'Disabilities'**
  String get category_disabilities;

  /// category.disasters
  ///
  /// In en, this message translates to:
  /// **'Disasters'**
  String get category_disasters;

  /// category.education
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get category_education;

  /// category.food
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get category_food;

  /// category.general
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get category_general;

  /// category.health
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get category_health;

  /// category.housing_utilities
  ///
  /// In en, this message translates to:
  /// **'Housing and utilities'**
  String get category_housing_utilities;

  /// category.jobs_unemployment
  ///
  /// In en, this message translates to:
  /// **'Jobs and unemployment'**
  String get category_jobs_unemployment;

  /// category.military_veterans
  ///
  /// In en, this message translates to:
  /// **'Military and veterans'**
  String get category_military_veterans;

  /// category.retirement_seniors
  ///
  /// In en, this message translates to:
  /// **'Retirement and seniors'**
  String get category_retirement_seniors;

  /// category.welfare_cash_assistance
  ///
  /// In en, this message translates to:
  /// **'Welfare and cash assistance'**
  String get category_welfare_cash_assistance;

  /// breadth.focused
  ///
  /// In en, this message translates to:
  /// **'Focused keeps the screen short and concentrates on the strongest program signals.'**
  String get breadth_focused;

  /// breadth.balanced
  ///
  /// In en, this message translates to:
  /// **'Balanced explores a moderate number of possible programs before stopping.'**
  String get breadth_balanced;

  /// breadth.broad
  ///
  /// In en, this message translates to:
  /// **'Broad keeps exploring longer so the screener can cover more possible programs.'**
  String get breadth_broad;

  /// depth.light
  ///
  /// In en, this message translates to:
  /// **'High-level keeps questions broad, usually yes/no or simple category prompts.'**
  String get depth_light;

  /// depth.standard
  ///
  /// In en, this message translates to:
  /// **'Standard mixes broad screeners with some more specific follow-ups.'**
  String get depth_standard;

  /// depth.detailed
  ///
  /// In en, this message translates to:
  /// **'Detailed asks for exact amounts, dates, durations, and other precise facts when available.'**
  String get depth_detailed;

  /// scenario.limitedIncome
  ///
  /// In en, this message translates to:
  /// **'If I had limited income and resources'**
  String get scenario_limitedIncome;

  /// scenario.limitedIncomeDesc
  ///
  /// In en, this message translates to:
  /// **'Useful for cash-assistance or SSI-style planning.'**
  String get scenario_limitedIncomeDesc;

  /// scenario.disability
  ///
  /// In en, this message translates to:
  /// **'If I had a qualifying disability'**
  String get scenario_disability;

  /// scenario.disabilityDesc
  ///
  /// In en, this message translates to:
  /// **'Tests disability-related pathways and work-limitation rules.'**
  String get scenario_disabilityDesc;

  /// scenario.military
  ///
  /// In en, this message translates to:
  /// **'If I had active-duty military service'**
  String get scenario_military;

  /// scenario.militaryDesc
  ///
  /// In en, this message translates to:
  /// **'Checks whether service history opens veteran benefits.'**
  String get scenario_militaryDesc;

  /// scenario.familyDeath
  ///
  /// In en, this message translates to:
  /// **'If I had a recent family death event'**
  String get scenario_familyDeath;

  /// scenario.familyDeathDesc
  ///
  /// In en, this message translates to:
  /// **'Explores survivor and funeral assistance pathways.'**
  String get scenario_familyDeathDesc;

  /// status.likely_eligible
  ///
  /// In en, this message translates to:
  /// **'likely eligible'**
  String get status_likely_eligible;

  /// status.possibly_eligible
  ///
  /// In en, this message translates to:
  /// **'possibly eligible'**
  String get status_possibly_eligible;

  /// status.unclear
  ///
  /// In en, this message translates to:
  /// **'Unclear'**
  String get status_unclear;

  /// status.likely_ineligible
  ///
  /// In en, this message translates to:
  /// **'likely ineligible'**
  String get status_likely_ineligible;

  /// sensitivity.low
  ///
  /// In en, this message translates to:
  /// **'low'**
  String get sensitivity_low;

  /// sensitivity.medium
  ///
  /// In en, this message translates to:
  /// **'medium'**
  String get sensitivity_medium;

  /// sensitivity.high
  ///
  /// In en, this message translates to:
  /// **'high'**
  String get sensitivity_high;

  /// certainty.rule_coverage
  ///
  /// In en, this message translates to:
  /// **'rule coverage'**
  String get certainty_rule_coverage;

  /// certainty.source_authority
  ///
  /// In en, this message translates to:
  /// **'source authority'**
  String get certainty_source_authority;

  /// certainty.source_freshness
  ///
  /// In en, this message translates to:
  /// **'source freshness'**
  String get certainty_source_freshness;

  /// certainty.program_determinism
  ///
  /// In en, this message translates to:
  /// **'program determinism'**
  String get certainty_program_determinism;

  /// certainty.amount_determinism
  ///
  /// In en, this message translates to:
  /// **'amount determinism'**
  String get certainty_amount_determinism;

  /// intake.scope.federal
  ///
  /// In en, this message translates to:
  /// **'Federal only for now'**
  String get intake_scope_federal;

  /// intake.scope.state
  ///
  /// In en, this message translates to:
  /// **'State-specific screening'**
  String get intake_scope_state;

  /// intake.scope.both
  ///
  /// In en, this message translates to:
  /// **'Federal and state screening'**
  String get intake_scope_both;

  /// intake.fact.state_code
  ///
  /// In en, this message translates to:
  /// **'State selected'**
  String get intake_fact_state_code;

  /// intake.fact.applicant_income
  ///
  /// In en, this message translates to:
  /// **'Limited income and resources'**
  String get intake_fact_applicant_income;

  /// intake.fact.applicant_disability
  ///
  /// In en, this message translates to:
  /// **'Disability or qualifying illness'**
  String get intake_fact_applicant_disability;

  /// intake.fact.applicant_ability_to_work
  ///
  /// In en, this message translates to:
  /// **'Unable to work for a year or more'**
  String get intake_fact_applicant_ability_to_work;

  /// intake.fact.applicant_served_in_active_military
  ///
  /// In en, this message translates to:
  /// **'Active-duty military service'**
  String get intake_fact_applicant_served_in_active_military;

  /// intake.fact.applicant_service_disability
  ///
  /// In en, this message translates to:
  /// **'Service-connected disability'**
  String get intake_fact_applicant_service_disability;

  /// intake.fact.applicant_dolo
  ///
  /// In en, this message translates to:
  /// **'Recent family death'**
  String get intake_fact_applicant_dolo;

  /// intake.fact.deceased_died_of_COVID
  ///
  /// In en, this message translates to:
  /// **'COVID-related death'**
  String get intake_fact_deceased_died_of_COVID;

  /// intake.fact.deceased_death_location_is_US
  ///
  /// In en, this message translates to:
  /// **'Death occurred in the U.S.'**
  String get intake_fact_deceased_death_location_is_US;

  /// intake.fact.applicant_paid_into_SS
  ///
  /// In en, this message translates to:
  /// **'Worked and paid Social Security taxes'**
  String get intake_fact_applicant_paid_into_SS;

  /// intake.fact.recent_job_loss
  ///
  /// In en, this message translates to:
  /// **'Recent job loss or reduced hours'**
  String get intake_fact_recent_job_loss;

  /// intake.fact.housing_urgency
  ///
  /// In en, this message translates to:
  /// **'Urgent housing or utility pressure'**
  String get intake_fact_housing_urgency;

  /// intake.fact.food_insecurity
  ///
  /// In en, this message translates to:
  /// **'Food or grocery hardship'**
  String get intake_fact_food_insecurity;

  /// intake.fact.current_student
  ///
  /// In en, this message translates to:
  /// **'Currently in school or job training'**
  String get intake_fact_current_student;

  /// intake.fact.has_children
  ///
  /// In en, this message translates to:
  /// **'Children or dependents in household'**
  String get intake_fact_has_children;

  /// intake.fact.is_62_or_older
  ///
  /// In en, this message translates to:
  /// **'Age 62 or older'**
  String get intake_fact_is_62_or_older;

  /// intake.fact.recent_disaster_impact
  ///
  /// In en, this message translates to:
  /// **'Recent disaster impact'**
  String get intake_fact_recent_disaster_impact;

  /// intake.fact.needs_health_coverage
  ///
  /// In en, this message translates to:
  /// **'Needs health coverage or medical help'**
  String get intake_fact_needs_health_coverage;

  /// intake.fact.annual_income_amount
  ///
  /// In en, this message translates to:
  /// **'Approximate annual income'**
  String get intake_fact_annual_income_amount;

  /// docType.required
  ///
  /// In en, this message translates to:
  /// **'required'**
  String get docType_required;

  /// docType.recommended
  ///
  /// In en, this message translates to:
  /// **'recommended'**
  String get docType_recommended;

  /// reviewStatus.open
  ///
  /// In en, this message translates to:
  /// **'open'**
  String get reviewStatus_open;

  /// reviewDiff.eligibility
  ///
  /// In en, this message translates to:
  /// **'eligibility'**
  String get reviewDiff_eligibility;

  /// reviewDiff.structural
  ///
  /// In en, this message translates to:
  /// **'structural'**
  String get reviewDiff_structural;

  /// reviewDiff.content
  ///
  /// In en, this message translates to:
  /// **'content'**
  String get reviewDiff_content;

  /// server.step.startState
  ///
  /// In en, this message translates to:
  /// **'Start on the official state social services website.'**
  String get server_step_startState;

  /// server.step.useStateTools
  ///
  /// In en, this message translates to:
  /// **'Use the state\'s official benefit tools or program pages to choose the benefit you need.'**
  String get server_step_useStateTools;

  /// server.step.followStateInstructions
  ///
  /// In en, this message translates to:
  /// **'Follow the state\'s official instructions for documents, local office contact, or online submission.'**
  String get server_step_followStateInstructions;

  /// server.step.reviewEligibility
  ///
  /// In en, this message translates to:
  /// **'Review the official government eligibility source used for this match.'**
  String get server_step_reviewEligibility;

  /// server.step.openOfficial
  ///
  /// In en, this message translates to:
  /// **'Open the official government page to start or continue the application.'**
  String get server_step_openOfficial;

  /// server.step.useSamePage
  ///
  /// In en, this message translates to:
  /// **'Use the same official page for required documents, status checks, or agency contact details.'**
  String get server_step_useSamePage;

  /// server.note.strongMatches
  ///
  /// In en, this message translates to:
  /// **'You already have {count} strong match{plural} to pursue on official government sites.'**
  String server_note_strongMatches(String plural, String count);

  /// server.note.possibleMatches
  ///
  /// In en, this message translates to:
  /// **'You have {count} possible match{plural}; answering a few more questions should tighten these.'**
  String server_note_possibleMatches(String plural, String count);

  /// server.note.biggestGap
  ///
  /// In en, this message translates to:
  /// **'The biggest information gap right now is: {label}.'**
  String server_note_biggestGap(String label);

  /// server.note.chooseState
  ///
  /// In en, this message translates to:
  /// **'Choose a state to unlock official state benefit pathways.'**
  String get server_note_chooseState;

  /// admin.invalidKey
  ///
  /// In en, this message translates to:
  /// **'The saved admin key was rejected. Update it and try again.'**
  String get admin_invalidKey;

  /// admin.requiredKey
  ///
  /// In en, this message translates to:
  /// **'Admin key required. Enter it in the Admin access field to use review and sync actions.'**
  String get admin_requiredKey;

  /// errors.requestFailed
  ///
  /// In en, this message translates to:
  /// **'Request failed with status {status}.'**
  String errors_requestFailed(String status);

  /// errors.genericTitle
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errors_genericTitle;

  /// errors.generic
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get errors_generic;

  /// errors.validation
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t process that request — please refresh and try again.'**
  String get errors_validation;

  /// errors.rateLimited
  ///
  /// In en, this message translates to:
  /// **'Too many requests. Please wait a minute and try again.'**
  String get errors_rateLimited;

  /// errors.server
  ///
  /// In en, this message translates to:
  /// **'Our service is having trouble. Please try again later.'**
  String get errors_server;

  /// errors.network
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t reach the server. Check your connection.'**
  String get errors_network;

  /// errors.timeout
  ///
  /// In en, this message translates to:
  /// **'The request timed out. Please try again.'**
  String get errors_timeout;

  /// errors.auth
  ///
  /// In en, this message translates to:
  /// **'You need to sign in to do that.'**
  String get errors_auth;

  /// errors.notFound
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find what you were looking for.'**
  String get errors_notFound;

  /// errors.tryAgain
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get errors_tryAgain;

  /// results.federalSection
  ///
  /// In en, this message translates to:
  /// **'Federal programs ({count})'**
  String results_federalSection(int count);

  /// results.stateSection
  ///
  /// In en, this message translates to:
  /// **'State programs ({count})'**
  String results_stateSection(int count);

  /// results.emptyFederal
  ///
  /// In en, this message translates to:
  /// **'No federal programs matched. Try answering more questions or broadening your screening.'**
  String get results_emptyFederal;

  /// results.emptyState
  ///
  /// In en, this message translates to:
  /// **'No state programs matched yet. Add your state in the screening to see local programs.'**
  String get results_emptyState;

  /// results.viewActionPlan
  ///
  /// In en, this message translates to:
  /// **'View action plan'**
  String get results_viewActionPlan;

  /// results.couldNotLoad
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your results.'**
  String get results_couldNotLoad;

  /// dashboard.couldNotLoad
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your action plan.'**
  String get dashboard_couldNotLoad;

  /// dashboard.applyLinkUnavailable
  ///
  /// In en, this message translates to:
  /// **'Application link unavailable — contact your local agency.'**
  String get dashboard_applyLinkUnavailable;

  /// dashboard.apply
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get dashboard_apply;

  /// dashboard.step
  ///
  /// In en, this message translates to:
  /// **'Step {n}'**
  String dashboard_step(int n);

  /// dashboard.emptyStack
  ///
  /// In en, this message translates to:
  /// **'We don\'t have a benefit stack for you yet. Finish your screening to populate it.'**
  String get dashboard_emptyStack;

  /// dashboard.emptyActions
  ///
  /// In en, this message translates to:
  /// **'No next actions yet — answer a few more questions to get a tailored plan.'**
  String get dashboard_emptyActions;

  /// dashboard.emptyDocuments
  ///
  /// In en, this message translates to:
  /// **'No documents to gather yet.'**
  String get dashboard_emptyDocuments;

  /// dashboard.emptyNotes
  ///
  /// In en, this message translates to:
  /// **'No additional notes for your situation.'**
  String get dashboard_emptyNotes;

  /// dashboard.emptySources
  ///
  /// In en, this message translates to:
  /// **'No source links available.'**
  String get dashboard_emptySources;

  /// dashboard.helpNarrowDown
  ///
  /// In en, this message translates to:
  /// **'Help us narrow this down'**
  String get dashboard_helpNarrowDown;

  /// dashboard.missingFactsHint
  ///
  /// In en, this message translates to:
  /// **'Answering these unlocks more accurate matches.'**
  String get dashboard_missingFactsHint;

  /// dashboard.resumeScreening
  ///
  /// In en, this message translates to:
  /// **'Resume screening'**
  String get dashboard_resumeScreening;

  /// dashboard.documentsTitle
  ///
  /// In en, this message translates to:
  /// **'Documents to gather'**
  String get dashboard_documentsTitle;

  /// dashboard.notesTitle
  ///
  /// In en, this message translates to:
  /// **'Planning notes'**
  String get dashboard_notesTitle;

  /// dashboard.sourceHubTitle
  ///
  /// In en, this message translates to:
  /// **'Official source hub'**
  String get dashboard_sourceHubTitle;

  /// dashboard.stackTitle
  ///
  /// In en, this message translates to:
  /// **'Your benefit stack'**
  String get dashboard_stackTitle;

  /// dashboard.actionsTitle
  ///
  /// In en, this message translates to:
  /// **'Next actions'**
  String get dashboard_actionsTitle;

  /// status.likelyEligible
  ///
  /// In en, this message translates to:
  /// **'Likely eligible'**
  String get status_likelyEligible;

  /// status.possiblyEligible
  ///
  /// In en, this message translates to:
  /// **'Possibly eligible'**
  String get status_possiblyEligible;

  /// status.likelyIneligible
  ///
  /// In en, this message translates to:
  /// **'Probably not'**
  String get status_likelyIneligible;

  /// dynamic.question.dob
  ///
  /// In en, this message translates to:
  /// **'What is your date of birth?'**
  String get dynamic_question_dob;

  /// dynamic.hint.dobExample
  ///
  /// In en, this message translates to:
  /// **'For example: 1990-01-20'**
  String get dynamic_hint_dobExample;

  /// dynamic.question.paidIntoSS
  ///
  /// In en, this message translates to:
  /// **'Did you ever work and pay U.S. Social Security taxes?'**
  String get dynamic_question_paidIntoSS;

  /// dynamic.question.limitedIncome
  ///
  /// In en, this message translates to:
  /// **'Do you have limited income and resources?'**
  String get dynamic_question_limitedIncome;

  /// dynamic.hint.limitedIncome
  ///
  /// In en, this message translates to:
  /// **'This is a broad screening question, not a final determination.'**
  String get dynamic_hint_limitedIncome;

  /// dynamic.question.disability
  ///
  /// In en, this message translates to:
  /// **'Do you have a disability or qualifying illness?'**
  String get dynamic_question_disability;

  /// dynamic.question.unableToWork
  ///
  /// In en, this message translates to:
  /// **'Are you unable to work for a year or more because of your disability?'**
  String get dynamic_question_unableToWork;

  /// dynamic.question.activeMilitary
  ///
  /// In en, this message translates to:
  /// **'Did you serve in the active military, naval, or air service?'**
  String get dynamic_question_activeMilitary;

  /// dynamic.question.serviceDisabilityDetailed
  ///
  /// In en, this message translates to:
  /// **'Was your disability caused or made worse by your active-duty military service?'**
  String get dynamic_question_serviceDisabilityDetailed;

  /// dynamic.question.familyDeathDetailed
  ///
  /// In en, this message translates to:
  /// **'Did you recently experience the death of an immediate family member?'**
  String get dynamic_question_familyDeathDetailed;

  /// dynamic.question.dateOfDeath
  ///
  /// In en, this message translates to:
  /// **'What was the date of death?'**
  String get dynamic_question_dateOfDeath;

  /// dynamic.hint.dateOfDeath
  ///
  /// In en, this message translates to:
  /// **'If you do not know the exact date, enter an approximate one.'**
  String get dynamic_hint_dateOfDeath;

  /// dynamic.question.covidDeath
  ///
  /// In en, this message translates to:
  /// **'Was the person\'s death COVID-19 related?'**
  String get dynamic_question_covidDeath;

  /// dynamic.question.deathInUs
  ///
  /// In en, this message translates to:
  /// **'Did the person die in the U.S.?'**
  String get dynamic_question_deathInUs;

  /// dynamic.hint.deathInUs
  ///
  /// In en, this message translates to:
  /// **'Including Puerto Rico and U.S. territories.'**
  String get dynamic_hint_deathInUs;

  /// dynamic.question.householdIncome
  ///
  /// In en, this message translates to:
  /// **'What is your approximate annual household income?'**
  String get dynamic_question_householdIncome;

  /// dynamic.hint.householdIncome
  ///
  /// In en, this message translates to:
  /// **'For reference, the 2024 federal poverty level is \$15,060/year for a single-person household. Many programs use 130–200% of this threshold.'**
  String get dynamic_hint_householdIncome;

  /// dynamic.question.disabilityType
  ///
  /// In en, this message translates to:
  /// **'What type of disability or condition do you have?'**
  String get dynamic_question_disabilityType;

  /// dynamic.hint.disabilityType
  ///
  /// In en, this message translates to:
  /// **'Select all that apply. Under SSA rules, a qualifying disability must significantly limit your ability to perform basic work activities.'**
  String get dynamic_hint_disabilityType;

  /// dynamic.question.monthsUnableToWork
  ///
  /// In en, this message translates to:
  /// **'How many months has your condition prevented you from working?'**
  String get dynamic_question_monthsUnableToWork;

  /// dynamic.hint.monthsUnableToWork
  ///
  /// In en, this message translates to:
  /// **'SSDI requires inability to engage in substantial gainful activity for at least 12 consecutive months (42 U.S.C. § 423(d)(1)(A)).'**
  String get dynamic_hint_monthsUnableToWork;

  /// dynamic.question.approxAge
  ///
  /// In en, this message translates to:
  /// **'What is your approximate age?'**
  String get dynamic_question_approxAge;

  /// dynamic.hint.approxAge
  ///
  /// In en, this message translates to:
  /// **'A rough age is enough for a quick check.'**
  String get dynamic_hint_approxAge;

  /// dynamic.question.exactDob
  ///
  /// In en, this message translates to:
  /// **'What is your exact date of birth?'**
  String get dynamic_question_exactDob;

  /// dynamic.hint.exactDob
  ///
  /// In en, this message translates to:
  /// **'Full retirement age varies: 66 for those born 1943–1954, increasing to 67 for those born 1960 or later (42 U.S.C. § 416(l)).'**
  String get dynamic_hint_exactDob;

  /// dynamic.question.militaryVeteran
  ///
  /// In en, this message translates to:
  /// **'Are you a military veteran?'**
  String get dynamic_question_militaryVeteran;

  /// dynamic.hint.activeMilitary
  ///
  /// In en, this message translates to:
  /// **'VA benefits require active duty service. Reserve/National Guard service may qualify if activated under federal orders (38 U.S.C. § 101(2)).'**
  String get dynamic_hint_activeMilitary;

  /// dynamic.question.serviceDisabilitySimple
  ///
  /// In en, this message translates to:
  /// **'Was your disability related to military service?'**
  String get dynamic_question_serviceDisabilitySimple;

  /// dynamic.hint.serviceDisabilityDetailed
  ///
  /// In en, this message translates to:
  /// **'VA disability compensation requires a service-connected condition with a disability rating of at least 10% (38 U.S.C. § 1110).'**
  String get dynamic_hint_serviceDisabilityDetailed;

  /// dynamic.question.familyDeathSimple
  ///
  /// In en, this message translates to:
  /// **'Did you recently lose a family member?'**
  String get dynamic_question_familyDeathSimple;

  /// dynamic.hint.familyDeathDetailed
  ///
  /// In en, this message translates to:
  /// **'Survivor benefits eligibility depends on your relationship to the deceased and their work history (42 U.S.C. § 402).'**
  String get dynamic_hint_familyDeathDetailed;

  /// dynamic.question.stateCode
  ///
  /// In en, this message translates to:
  /// **'Which state or territory do you want state benefits for?'**
  String get dynamic_question_stateCode;

  /// dynamic.hint.stateCode
  ///
  /// In en, this message translates to:
  /// **'State benefits vary by state and are kept separate from federal matches.'**
  String get dynamic_hint_stateCode;

  /// dynamic.option.yes
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get dynamic_option_yes;

  /// dynamic.option.no
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get dynamic_option_no;

  /// dynamic.option.physicalDisability
  ///
  /// In en, this message translates to:
  /// **'Physical disability'**
  String get dynamic_option_physicalDisability;

  /// dynamic.option.cognitiveDisability
  ///
  /// In en, this message translates to:
  /// **'Cognitive or intellectual disability'**
  String get dynamic_option_cognitiveDisability;

  /// dynamic.option.sensoryDisability
  ///
  /// In en, this message translates to:
  /// **'Sensory disability (vision/hearing)'**
  String get dynamic_option_sensoryDisability;

  /// dynamic.option.mentalHealth
  ///
  /// In en, this message translates to:
  /// **'Mental health condition'**
  String get dynamic_option_mentalHealth;

  /// dynamic.option.chronicIllness
  ///
  /// In en, this message translates to:
  /// **'Chronic illness'**
  String get dynamic_option_chronicIllness;

  /// dynamic.option.noneOfTheAbove
  ///
  /// In en, this message translates to:
  /// **'None of the above'**
  String get dynamic_option_noneOfTheAbove;

  /// dynamic.summary.retirement
  ///
  /// In en, this message translates to:
  /// **'Monthly retirement income for people who worked and paid Social Security taxes.'**
  String get dynamic_summary_retirement;

  /// dynamic.summary.ssdi
  ///
  /// In en, this message translates to:
  /// **'Monthly disability benefits for people who paid into Social Security and cannot work due to disability.'**
  String get dynamic_summary_ssdi;

  /// dynamic.summary.ssi
  ///
  /// In en, this message translates to:
  /// **'Monthly support for older adults and people with disabilities who have limited income and resources.'**
  String get dynamic_summary_ssi;

  /// dynamic.summary.vaDisability
  ///
  /// In en, this message translates to:
  /// **'Tax-free monthly payments for veterans whose disability was caused or worsened by active-duty service.'**
  String get dynamic_summary_vaDisability;

  /// dynamic.summary.survivor
  ///
  /// In en, this message translates to:
  /// **'Monthly Social Security payments for eligible family members after a worker dies.'**
  String get dynamic_summary_survivor;

  /// dynamic.summary.funeral
  ///
  /// In en, this message translates to:
  /// **'Financial help for funeral or burial costs for someone who died of COVID-19 in the U.S.'**
  String get dynamic_summary_funeral;

  /// dynamic.reason.paidIntoSS
  ///
  /// In en, this message translates to:
  /// **'You worked and paid Social Security taxes.'**
  String get dynamic_reason_paidIntoSS;

  /// dynamic.reason.retirementAge
  ///
  /// In en, this message translates to:
  /// **'You are at least retirement age.'**
  String get dynamic_reason_retirementAge;

  /// dynamic.reason.limitedIncome
  ///
  /// In en, this message translates to:
  /// **'You have limited income and resources.'**
  String get dynamic_reason_limitedIncome;

  /// dynamic.reason.disability
  ///
  /// In en, this message translates to:
  /// **'You have a disability or qualifying illness.'**
  String get dynamic_reason_disability;

  /// dynamic.reason.unableToWork
  ///
  /// In en, this message translates to:
  /// **'You cannot work for a year or more because of your disability.'**
  String get dynamic_reason_unableToWork;

  /// dynamic.reason.activeMilitary
  ///
  /// In en, this message translates to:
  /// **'You served in the active military.'**
  String get dynamic_reason_activeMilitary;

  /// dynamic.reason.serviceDisability
  ///
  /// In en, this message translates to:
  /// **'Your disability was caused or worsened by active-duty service.'**
  String get dynamic_reason_serviceDisability;

  /// dynamic.reason.familyDeath
  ///
  /// In en, this message translates to:
  /// **'You recently experienced the death of a family member.'**
  String get dynamic_reason_familyDeath;

  /// dynamic.reason.covidDeath
  ///
  /// In en, this message translates to:
  /// **'The deceased\'s death was COVID-19 related.'**
  String get dynamic_reason_covidDeath;

  /// dynamic.reason.diedInUs
  ///
  /// In en, this message translates to:
  /// **'The deceased died in the U.S.'**
  String get dynamic_reason_diedInUs;

  /// dynamic.reason.afterDate
  ///
  /// In en, this message translates to:
  /// **'The deceased died after May 20, 2020.'**
  String get dynamic_reason_afterDate;

  /// dynamic.amount.ssi
  ///
  /// In en, this message translates to:
  /// **'Up to \$943/month for individuals, \$1,415/month for couples (2024 rates).'**
  String get dynamic_amount_ssi;

  /// dynamic.amount.retirement
  ///
  /// In en, this message translates to:
  /// **'Monthly amount depends on work history and claiming age.'**
  String get dynamic_amount_retirement;

  /// dynamic.amount.ssdi
  ///
  /// In en, this message translates to:
  /// **'Monthly amount depends on work history.'**
  String get dynamic_amount_ssdi;

  /// dynamic.amount.vaDisability
  ///
  /// In en, this message translates to:
  /// **'Amount depends on disability rating and dependents.'**
  String get dynamic_amount_vaDisability;

  /// dynamic.amount.survivor
  ///
  /// In en, this message translates to:
  /// **'Monthly amount depends on the worker\'s record and your relationship.'**
  String get dynamic_amount_survivor;

  /// dynamic.amount.funeral
  ///
  /// In en, this message translates to:
  /// **'Reimbursement amount depends on eligible funeral expenses.'**
  String get dynamic_amount_funeral;

  /// dynamic.document.ssnCard
  ///
  /// In en, this message translates to:
  /// **'Social Security card or number'**
  String get dynamic_document_ssnCard;

  /// dynamic.document.ssnCardDesc
  ///
  /// In en, this message translates to:
  /// **'Your 9-digit SSN'**
  String get dynamic_document_ssnCardDesc;

  /// dynamic.document.proofOfAge
  ///
  /// In en, this message translates to:
  /// **'Proof of age'**
  String get dynamic_document_proofOfAge;

  /// dynamic.document.proofOfAgeDesc
  ///
  /// In en, this message translates to:
  /// **'Birth certificate or passport'**
  String get dynamic_document_proofOfAgeDesc;

  /// dynamic.document.w2
  ///
  /// In en, this message translates to:
  /// **'W-2 forms or self-employment tax returns'**
  String get dynamic_document_w2;

  /// dynamic.document.w2RecentDesc
  ///
  /// In en, this message translates to:
  /// **'Most recent year\'s earnings records'**
  String get dynamic_document_w2RecentDesc;

  /// dynamic.document.w2CurrentPriorDesc
  ///
  /// In en, this message translates to:
  /// **'Earnings records for the current and prior year'**
  String get dynamic_document_w2CurrentPriorDesc;

  /// dynamic.document.bankInfo
  ///
  /// In en, this message translates to:
  /// **'Bank account information'**
  String get dynamic_document_bankInfo;

  /// dynamic.document.bankInfoDesc
  ///
  /// In en, this message translates to:
  /// **'For direct deposit of benefits'**
  String get dynamic_document_bankInfoDesc;

  /// dynamic.document.medicalRecords
  ///
  /// In en, this message translates to:
  /// **'Medical records'**
  String get dynamic_document_medicalRecords;

  /// dynamic.document.medicalRecordsDesc
  ///
  /// In en, this message translates to:
  /// **'Documentation of your disability from doctors, hospitals, or clinics'**
  String get dynamic_document_medicalRecordsDesc;

  /// dynamic.document.incomeResources
  ///
  /// In en, this message translates to:
  /// **'Proof of income and resources'**
  String get dynamic_document_incomeResources;

  /// dynamic.document.incomeResourcesDesc
  ///
  /// In en, this message translates to:
  /// **'Pay stubs, bank statements, or benefit award letters'**
  String get dynamic_document_incomeResourcesDesc;

  /// dynamic.document.disabilityDocsDesc
  ///
  /// In en, this message translates to:
  /// **'Documentation of your disability'**
  String get dynamic_document_disabilityDocsDesc;

  /// dynamic.document.livingArrangement
  ///
  /// In en, this message translates to:
  /// **'Proof of living arrangement'**
  String get dynamic_document_livingArrangement;

  /// dynamic.document.livingArrangementDesc
  ///
  /// In en, this message translates to:
  /// **'Lease, mortgage statement, or letter from landlord'**
  String get dynamic_document_livingArrangementDesc;

  /// dynamic.document.citizenship
  ///
  /// In en, this message translates to:
  /// **'Proof of citizenship or immigration status'**
  String get dynamic_document_citizenship;

  /// dynamic.document.citizenshipDesc
  ///
  /// In en, this message translates to:
  /// **'Birth certificate, passport, or immigration documents'**
  String get dynamic_document_citizenshipDesc;

  /// dynamic.document.dd214
  ///
  /// In en, this message translates to:
  /// **'DD-214 (discharge papers)'**
  String get dynamic_document_dd214;

  /// dynamic.document.dd214Desc
  ///
  /// In en, this message translates to:
  /// **'Certificate of Release or Discharge from Active Duty'**
  String get dynamic_document_dd214Desc;

  /// dynamic.document.serviceEvidenceDesc
  ///
  /// In en, this message translates to:
  /// **'Evidence linking your disability to military service'**
  String get dynamic_document_serviceEvidenceDesc;

  /// dynamic.document.vaForm
  ///
  /// In en, this message translates to:
  /// **'VA Form 21-526EZ'**
  String get dynamic_document_vaForm;

  /// dynamic.document.vaFormDesc
  ///
  /// In en, this message translates to:
  /// **'Application for Disability Compensation'**
  String get dynamic_document_vaFormDesc;

  /// dynamic.document.deceasedSsn
  ///
  /// In en, this message translates to:
  /// **'Deceased\'s Social Security number'**
  String get dynamic_document_deceasedSsn;

  /// dynamic.document.deceasedSsnDesc
  ///
  /// In en, this message translates to:
  /// **'The worker\'s SSN'**
  String get dynamic_document_deceasedSsnDesc;

  /// dynamic.document.deathCertificate
  ///
  /// In en, this message translates to:
  /// **'Death certificate'**
  String get dynamic_document_deathCertificate;

  /// dynamic.document.deathCertificateDesc
  ///
  /// In en, this message translates to:
  /// **'Certified copy of the death certificate'**
  String get dynamic_document_deathCertificateDesc;

  /// dynamic.document.relationshipProof
  ///
  /// In en, this message translates to:
  /// **'Proof of relationship'**
  String get dynamic_document_relationshipProof;

  /// dynamic.document.relationshipProofDesc
  ///
  /// In en, this message translates to:
  /// **'Marriage certificate, birth certificate, or adoption papers'**
  String get dynamic_document_relationshipProofDesc;

  /// dynamic.document.covidDeathCertificateDesc
  ///
  /// In en, this message translates to:
  /// **'Must attribute the death to COVID-19'**
  String get dynamic_document_covidDeathCertificateDesc;

  /// dynamic.document.funeralReceipts
  ///
  /// In en, this message translates to:
  /// **'Funeral expense receipts'**
  String get dynamic_document_funeralReceipts;

  /// dynamic.document.funeralReceiptsDesc
  ///
  /// In en, this message translates to:
  /// **'Itemized receipts or contracts from funeral providers'**
  String get dynamic_document_funeralReceiptsDesc;

  /// dynamic.document.usResidency
  ///
  /// In en, this message translates to:
  /// **'Proof of U.S. residency'**
  String get dynamic_document_usResidency;

  /// dynamic.document.usResidencyDesc
  ///
  /// In en, this message translates to:
  /// **'For the person who incurred the funeral expenses'**
  String get dynamic_document_usResidencyDesc;

  /// dynamic.document.femaAppNumber
  ///
  /// In en, this message translates to:
  /// **'FEMA application number'**
  String get dynamic_document_femaAppNumber;

  /// dynamic.document.femaAppNumberDesc
  ///
  /// In en, this message translates to:
  /// **'If you previously applied for other FEMA assistance'**
  String get dynamic_document_femaAppNumberDesc;

  /// lang.en
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get lang_en;

  /// lang.es
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get lang_es;

  /// brand.name
  ///
  /// In en, this message translates to:
  /// **'Benefits Digger'**
  String get brand_name;

  /// brand.tagline
  ///
  /// In en, this message translates to:
  /// **'Find every benefit you may qualify for. Backed by official sources.'**
  String get brand_tagline;

  /// nav.screen
  ///
  /// In en, this message translates to:
  /// **'Screen'**
  String get nav_screen;

  /// nav.chat
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get nav_chat;

  /// nav.programs
  ///
  /// In en, this message translates to:
  /// **'Programs'**
  String get nav_programs;

  /// nav.skipToContent
  ///
  /// In en, this message translates to:
  /// **'Skip to main content'**
  String get nav_skipToContent;

  /// nav.openMenu
  ///
  /// In en, this message translates to:
  /// **'Open menu'**
  String get nav_openMenu;

  /// nav.closeMenu
  ///
  /// In en, this message translates to:
  /// **'Close menu'**
  String get nav_closeMenu;

  /// theme.toggle
  ///
  /// In en, this message translates to:
  /// **'Toggle theme'**
  String get theme_toggle;

  /// theme.light
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get theme_light;

  /// theme.dark
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get theme_dark;

  /// theme.system
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get theme_system;

  /// language.switcher
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language_switcher;

  /// landing.eyebrow
  ///
  /// In en, this message translates to:
  /// **'Plan with confidence'**
  String get landing_eyebrow;

  /// landing.heroTitle
  ///
  /// In en, this message translates to:
  /// **'See every government benefit you may qualify for.'**
  String get landing_heroTitle;

  /// landing.heroLede
  ///
  /// In en, this message translates to:
  /// **'Benefits Digger walks you through a short conversation, screens you against federal and state programs, and grounds every match in an official source.'**
  String get landing_heroLede;

  /// landing.startScreening
  ///
  /// In en, this message translates to:
  /// **'Start screening'**
  String get landing_startScreening;

  /// landing.startScreeningHint
  ///
  /// In en, this message translates to:
  /// **'Five-minute walkthrough. Private. No account required.'**
  String get landing_startScreeningHint;

  /// landing.askAssistant
  ///
  /// In en, this message translates to:
  /// **'Ask the assistant'**
  String get landing_askAssistant;

  /// landing.askAssistantHint
  ///
  /// In en, this message translates to:
  /// **'Describe your situation in your own words.'**
  String get landing_askAssistantHint;

  /// landing.browsePrograms
  ///
  /// In en, this message translates to:
  /// **'Browse programs'**
  String get landing_browsePrograms;

  /// landing.browseProgramsHint
  ///
  /// In en, this message translates to:
  /// **'Search the official program catalog.'**
  String get landing_browseProgramsHint;

  /// landing.howItWorksTitle
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get landing_howItWorksTitle;

  /// landing.howItWorksLede
  ///
  /// In en, this message translates to:
  /// **'Three steps that respect your time and your situation.'**
  String get landing_howItWorksLede;

  /// landing.step1Title
  ///
  /// In en, this message translates to:
  /// **'Tell us what is going on'**
  String get landing_step1Title;

  /// landing.step1Body
  ///
  /// In en, this message translates to:
  /// **'Type a sentence about your situation, or answer a few short yes-or-no questions. We translate your story into a structured screen.'**
  String get landing_step1Body;

  /// landing.step2Title
  ///
  /// In en, this message translates to:
  /// **'We match against official rules'**
  String get landing_step2Title;

  /// landing.step2Body
  ///
  /// In en, this message translates to:
  /// **'Each program is scored against the latest federal or state eligibility rules. Where data is missing, we say so plainly.'**
  String get landing_step2Body;

  /// landing.step3Title
  ///
  /// In en, this message translates to:
  /// **'Walk away with a plan'**
  String get landing_step3Title;

  /// landing.step3Body
  ///
  /// In en, this message translates to:
  /// **'Get a checklist of next steps, the documents you will need, and direct links to the official application pages.'**
  String get landing_step3Body;

  /// landing.trustTitle
  ///
  /// In en, this message translates to:
  /// **'Why people trust the results'**
  String get landing_trustTitle;

  /// landing.trustOfficial
  ///
  /// In en, this message translates to:
  /// **'Sourced from official .gov documents'**
  String get landing_trustOfficial;

  /// landing.trustOfficialBody
  ///
  /// In en, this message translates to:
  /// **'Every match is grounded in published agency rules and links back to the original page.'**
  String get landing_trustOfficialBody;

  /// landing.trustPrivate
  ///
  /// In en, this message translates to:
  /// **'Private by default'**
  String get landing_trustPrivate;

  /// landing.trustPrivateBody
  ///
  /// In en, this message translates to:
  /// **'Your answers stay in your browser session. We never sell, share, or sign you in.'**
  String get landing_trustPrivateBody;

  /// landing.trustExplainable
  ///
  /// In en, this message translates to:
  /// **'Explainable confidence'**
  String get landing_trustExplainable;

  /// landing.trustExplainableBody
  ///
  /// In en, this message translates to:
  /// **'We show why each program matched, what is missing, and how confident the screen is.'**
  String get landing_trustExplainableBody;

  /// landing.comingSoon
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get landing_comingSoon;

  /// landing.comingSoonBody
  ///
  /// In en, this message translates to:
  /// **'This part of Benefits Digger is being built right now. Check back shortly.'**
  String get landing_comingSoonBody;

  /// landing.notFoundTitle
  ///
  /// In en, this message translates to:
  /// **'We could not find that page'**
  String get landing_notFoundTitle;

  /// landing.notFoundBody
  ///
  /// In en, this message translates to:
  /// **'The page you are looking for has moved or does not exist.'**
  String get landing_notFoundBody;

  /// landing.notFoundCta
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get landing_notFoundCta;

  /// landing.errorTitle
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get landing_errorTitle;

  /// landing.errorBody
  ///
  /// In en, this message translates to:
  /// **'An unexpected error happened while loading this page. Try again, and if it keeps happening, the team has been notified.'**
  String get landing_errorBody;

  /// landing.errorRetry
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get landing_errorRetry;

  /// landing.loading
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get landing_loading;

  /// footer.disclaimer
  ///
  /// In en, this message translates to:
  /// **'Benefits Digger is an independent screening tool. It is not affiliated with, endorsed by, or operated by the U.S. federal government or any state agency. Final eligibility is determined by the agency that runs the benefit.'**
  String get footer_disclaimer;

  /// footer.privacy
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get footer_privacy;

  /// footer.sources
  ///
  /// In en, this message translates to:
  /// **'Official sources'**
  String get footer_sources;

  /// footer.about
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get footer_about;

  /// footer.copyright
  ///
  /// In en, this message translates to:
  /// **'{year} Benefits Digger'**
  String footer_copyright(String year);

  /// helpBot.title — header of the floating help panel
  ///
  /// In en, this message translates to:
  /// **'Help with this app'**
  String get helpBot_title;

  /// helpBot.placeholder — input bar hint inside the help panel
  ///
  /// In en, this message translates to:
  /// **'Ask how to use the app…'**
  String get helpBot_placeholder;

  /// helpBot.openLabel — accessible label on the closed FAB
  ///
  /// In en, this message translates to:
  /// **'Get help with this app'**
  String get helpBot_openLabel;

  /// helpBot.emptyState — copy shown when there are no messages
  ///
  /// In en, this message translates to:
  /// **'Ask how to use a feature, navigate to a page, or understand a screening question. (For benefits questions, use the main chat.)'**
  String get helpBot_emptyState;

  /// helpBot.streaming — status while waiting on the assistant
  ///
  /// In en, this message translates to:
  /// **'Thinking…'**
  String get helpBot_streaming;

  /// helpBot.error — shown when the help service fails
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t reach the help assistant. Try again in a moment.'**
  String get helpBot_error;

  /// helpBot.close — accessible label on the close button
  ///
  /// In en, this message translates to:
  /// **'Close help'**
  String get helpBot_close;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'en',
    'es',
    'ko',
    'ru',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'ko':
      return AppLocalizationsKo();
    case 'ru':
      return AppLocalizationsRu();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
