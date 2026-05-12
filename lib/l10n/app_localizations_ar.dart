// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get nav_home => 'الرئيسية';

  @override
  String get nav_dashboard => 'لوحة التخطيط';

  @override
  String get nav_results => 'النتائج';

  @override
  String get nav_whatif => 'مختبر الافتراضات';

  @override
  String get nav_explorer => 'مستكشف البرامج';

  @override
  String get page_homeTitle => 'Benefits Digger';

  @override
  String get page_dashboardTitle => 'لوحة التخطيط - Benefits Digger';

  @override
  String get page_resultsTitle => 'النتائج - Benefits Digger';

  @override
  String get page_whatifTitle => 'مختبر الافتراضات - Benefits Digger';

  @override
  String get page_explorerTitle => 'مستكشف البرامج - Benefits Digger';

  @override
  String get app_eyebrow => 'Benefits Digger';

  @override
  String get app_headline =>
      'خطّط للمزايا، قارنها واسعَ إليها بأدلة حكومية رسمية.';

  @override
  String get app_lede =>
      'افحص أهليتك للمزايا، وقارن سيناريوهات افتراضية، وتصفّح الكتالوج الرسمي، وانتهِ بخطة عمل واضحة مستندة إلى مصادر حكومية.';

  @override
  String get home_startScreening => 'ابدأ الفحص';

  @override
  String get home_trustPrivate => 'بياناتك خاصة ولا يتم تخزينها أبدًا.';

  @override
  String get home_trustSources =>
      'البيانات مأخوذة مباشرة من برامج حكومية رسمية.';

  @override
  String get home_scope => 'النطاق';

  @override
  String get home_scopeBoth => 'اتحادي وولاية';

  @override
  String get home_scopeFederal => 'اتحادي فقط';

  @override
  String get home_scopeState => 'ولاية فقط';

  @override
  String get home_state => 'الولاية';

  @override
  String get home_chooseState => 'اختر ولاية';

  @override
  String get home_breadth => 'الاتساع';

  @override
  String get home_breadthFocused => 'مركّز';

  @override
  String get home_breadthBalanced => 'متوازن';

  @override
  String get home_breadthBroad => 'واسع';

  @override
  String get home_depth => 'العمق';

  @override
  String get home_depthLight => 'نظرة عامة';

  @override
  String get home_depthStandard => 'قياسي';

  @override
  String get home_depthDetailed => 'مفصّل';

  @override
  String get home_categories => 'فئات المزايا';

  @override
  String get home_categoriesHint =>
      'اختر فئة واحدة على الأقل لتجد المزايا التي قد تكون مؤهلاً لها وكيفية التقديم.';

  @override
  String get home_selectAll => 'تحديد الكل';

  @override
  String get home_clear => 'مسح';

  @override
  String get home_apply => 'تطبيق التحديدات';

  @override
  String get home_reset => 'إعادة الضبط';

  @override
  String get home_refreshSources => 'تحديث المصادر الرسمية';

  @override
  String get home_questionFlow => 'تدفق الأسئلة';

  @override
  String get home_questionEmpty => 'ابدأ جلسة لتشغيل الفاحص.';

  @override
  String get home_saveAnswer => 'حفظ الإجابة';

  @override
  String get home_backQuestion => 'العودة إلى السؤال السابق';

  @override
  String get home_showResults => 'عرض النتائج الآن';

  @override
  String get home_reviewQueue => 'قائمة المراجعة';

  @override
  String get home_refreshQueue => 'تحديث القائمة';

  @override
  String get home_noReviewTasks => 'لا توجد مهام للمراجعة بعد.';

  @override
  String home_breadthApprox(String description, String count) {
    return '$description (~$count سؤالًا)';
  }

  @override
  String home_depthApprox(String description) {
    return '$description';
  }

  @override
  String get home_noMoreQuestions =>
      'لا مزيد من الأسئلة في الانتظار. النتائج جاهزة.';

  @override
  String get home_noProgramsFound =>
      'لم نعثر على برامج مزايا تطابق اختيارك. جرّب توسيع الفئات أو اختيار ولاية أخرى.';

  @override
  String get home_selectCategory =>
      'اختر فئة واحدة على الأقل قبل تطبيق التحديدات.';

  @override
  String get home_chooseScope => 'اختر نطاق الفحص قبل بدء الجلسة.';

  @override
  String get home_chooseStateMsg =>
      'يرجى اختيار ولاية قبل بدء فحص الولاية أو الفحص المشترك.';

  @override
  String get home_chooseOne => 'اختر واحدًا';

  @override
  String get home_searching => 'جارٍ البحث...';

  @override
  String get home_creatingSession => 'جارٍ إنشاء الجلسة...';

  @override
  String get home_creatingSessionState =>
      'جارٍ إنشاء الجلسة وتحميل مزايا الولاية...';

  @override
  String home_sessionLive(String sessionId) {
    return 'الجلسة $sessionId نشطة.';
  }

  @override
  String home_sessionError(String error) {
    return 'تعذّر بدء الجلسة: $error';
  }

  @override
  String get home_answerRequired => 'يرجى اختيار إجابة قبل المتابعة.';

  @override
  String get home_answerSaved => 'تم حفظ الإجابة.';

  @override
  String home_answerError(String error) {
    return 'تعذّر حفظ الإجابة: $error';
  }

  @override
  String get home_resultsRefreshed => 'تم تحديث النتائج.';

  @override
  String get home_refreshingOfficialSources => 'جارٍ تحديث المصادر الرسمية...';

  @override
  String get home_officialSourcesRefreshed => 'تم تحديث المصادر الرسمية.';

  @override
  String home_syncSummary(String added, String crawled) {
    return 'تم تحديث المصادر الرسمية. تمت فهرسة $crawled موقعًا برنامجيًا وإضافة $added مصدر صفحة حكومية.';
  }

  @override
  String home_syncFailed(String error) {
    return 'فشل المزامنة: $error';
  }

  @override
  String home_sensitivity(String level) {
    return 'حساسية $level';
  }

  @override
  String get home_sourceLabel => 'المصدر';

  @override
  String home_reviewTaskMeta(String score, String diffType) {
    return '$diffType · أهمية $score';
  }

  @override
  String get home_adminKey => 'مفتاح وصول المسؤول';

  @override
  String get home_adminPlaceholder => 'مطلوب فقط عند تفعيل حماية المسؤول';

  @override
  String get home_adminHelp =>
      'يُستخدم فقط لقائمة المراجعة وإجراءات تحديث المصادر. يُحفظ في علامة التبويب هذه حتى تقوم بمسحه.';

  @override
  String get home_saveKey => 'حفظ المفتاح';

  @override
  String get home_clearKey => 'مسح المفتاح';

  @override
  String get home_adminSaved => 'تم حفظ مفتاح المسؤول لعلامة التبويب هذه.';

  @override
  String get home_adminCleared => 'تم مسح مفتاح المسؤول.';

  @override
  String get home_lifeIntakePill => 'إدخال حدث حياتي';

  @override
  String get home_lifeIntakeTitle => 'صف وضعك';

  @override
  String get home_lifeIntakeLabel => 'أخبرنا عن المشكلة بكلماتك';

  @override
  String get home_lifeIntakePlaceholder =>
      'مثال: فقدت عملي، وعليّ متأخرات إيجار، وأبحث عما إذا كانت هناك مساعدات للطعام والتأمين الصحي.';

  @override
  String get home_lifeIntakeHint =>
      'لا حاجة لتصنيف المشكلة أولًا. سنحوّل وصفك إلى فئات مقترحة وحقائق محتملة وأهم الأسئلة التالية.';

  @override
  String get home_lifeIntakeAnalyze => 'حلّل وضعي';

  @override
  String get home_lifeIntakeClear => 'مسح الإدخال';

  @override
  String get home_lifeSummaryTitle => 'ما سمعته';

  @override
  String get home_lifeSuggestedScope => 'النطاق المقترح';

  @override
  String get home_lifeSuggestedState => 'الولاية المقترحة';

  @override
  String get home_lifeCategoriesTitle => 'مجالات مزايا مقترحة';

  @override
  String get home_lifeFactsTitle => 'حقائق منظّمة حتى الآن';

  @override
  String get home_lifeMissingTitle => 'لا يزال من المفيد السؤال';

  @override
  String get home_lifeApply => 'استخدم هذه المقترحات في الفاحص';

  @override
  String get home_lifeStart => 'ابدأ الفحص من الدردشة';

  @override
  String get home_lifeChatTitle => 'مساعد المزايا';

  @override
  String get home_lifeAssistantName => 'Zobo';

  @override
  String get home_lifeChatLauncherLabel => 'افتح مساعد Zobo';

  @override
  String get home_lifeChatClose => 'تصغير المساعد';

  @override
  String get home_lifeChatMinimize => 'تصغير';

  @override
  String get home_lifeChatHint =>
      'أخبرني بما يحدث، وسأطرح متابعة قصيرة واحدة في كل مرة.';

  @override
  String get home_lifeChatEmpty =>
      'ابدأ بوصف ما تتعامل معه، وسأحوّله إلى مجالات مزايا وأسئلة تالية.';

  @override
  String get home_lifeChatInputLabel => 'ردّ على المساعد';

  @override
  String get home_lifeChatWelcome =>
      'مرحبًا. أنا Zobo. أخبرني قليلاً عمّا يحدث، وسأساعدك على ترتيب الخطوات التالية.';

  @override
  String get home_lifeChatWelcomeSession =>
      'مرحبًا. أنا Zobo. يمكنني البقاء معك أثناء مراجعة هذه الجلسة. اطلب مني شرح نتيجة، أو حقيقة مفقودة، أو الخطوة التالية.';

  @override
  String get home_lifeChatPlaceholder =>
      'جرّب: فقدت عملي، عليّ متأخرات إيجار، وأحتاج مساعدة بالطعام.';

  @override
  String get home_lifeChatPlaceholderYesNo =>
      'إجابة قصيرة بنعم أو لا تكفي هنا.';

  @override
  String get home_lifeChatPlaceholderState =>
      'ردّ باسم ولاية مثل CA أو كاليفورنيا أو New York.';

  @override
  String get home_lifeChatSend => 'ردّ';

  @override
  String get home_lifeChatSending => 'جارٍ الإرسال...';

  @override
  String get home_lifeChatQuickReplies => 'ردود سريعة';

  @override
  String get home_lifeChatNavigate => 'قد ترغب أيضًا بالذهاب إلى';

  @override
  String get home_navAction_use_screener => 'استخدم الفاحص';

  @override
  String get home_navAction_start_screening => 'ابدأ الفحص';

  @override
  String get home_navAction_open_explorer => 'افتح مستكشف البرامج';

  @override
  String get home_navAction_open_results => 'افتح النتائج';

  @override
  String get home_navAction_open_dashboard => 'افتح لوحة التخطيط';

  @override
  String get home_lifeChatUserLabel => 'أنت';

  @override
  String get home_lifeChatStatusEmpty => 'أخبرني بما يحدث للبدء.';

  @override
  String get home_lifeChatStatusWaitingDetails =>
      'أخبرني بمزيد من التفاصيل لأوجّهك بدقة.';

  @override
  String get home_lifeChatStatusThinking => 'أفكّر في تحديثك...';

  @override
  String get home_lifeChatStatusReady => 'لديّ متابعة قصيرة جاهزة.';

  @override
  String get home_lifeChatStatusDone => 'لديّ ما يكفي للمضي قدمًا.';

  @override
  String get home_lifeNoCategories => 'لم يُستنتج بعد أي مجال مزايا.';

  @override
  String get home_lifeNoFacts => 'لم تُسجَّل بعد حقائق منظّمة.';

  @override
  String get home_lifeNoMissing => 'لا توجد أسئلة متابعة حرجة مفقودة الآن.';

  @override
  String get home_lifeApplyDone => 'نُسخت اقتراحات المساعد إلى عناصر الفاحص.';

  @override
  String get home_lifeStarted => 'بدأ الفحص استنادًا إلى اقتراحات المساعد.';

  @override
  String get home_lifeDescriptionRequired =>
      'أخبرني بما يحدث لأستطيع المساعدة.';

  @override
  String get home_lifeAnalyzing => 'جارٍ تحليل وضعك...';

  @override
  String get home_lifeAnalyzed => 'تم تحديث الإدخال.';

  @override
  String home_lifeInterpretError(String error) {
    return 'تعذّر تحليل الإدخال: $error';
  }

  @override
  String get home_lifeProbeUpdated => 'تمت إضافة تفاصيل المتابعة.';

  @override
  String home_lifeProbeError(String error) {
    return 'تعذّر معالجة هذه المتابعة: $error';
  }

  @override
  String get results_title => 'النتائج';

  @override
  String results_liveMatches(String count) {
    return '$count نتيجة مطابقة حيّة';
  }

  @override
  String get results_print => 'طباعة';

  @override
  String get results_redoScreening => 'إعادة الفحص';

  @override
  String get results_downloadPdf => 'تنزيل PDF';

  @override
  String get results_scrollUp => 'تمرير لأعلى';

  @override
  String get results_scrollDown => 'تمرير لأسفل';

  @override
  String get results_generatingPdf => 'جارٍ الإنشاء...';

  @override
  String get results_noSession =>
      'لا توجد جلسة نشطة. <a href=\"/\">ابدأ فحصًا</a> أولًا.';

  @override
  String get results_federalTitle => 'النتائج الاتحادية';

  @override
  String get results_stateTitle => 'نتائج الولاية';

  @override
  String get results_noFederal =>
      'لا نتائج اتحادية بعد. أجب على المزيد من الأسئلة لتحسين المطابقة.';

  @override
  String get results_noState =>
      'لا نتائج للولاية بعد. أجب على المزيد من الأسئلة لتحسين المطابقة.';

  @override
  String get results_federalOnlyFinished =>
      'هذه جلسة اتحادية فقط، لذا لا تظهر نتائج الولاية.';

  @override
  String get results_federalOnlyHidden =>
      'نتائج الولاية مخفية عند اختيار نطاق «اتحادي فقط».';

  @override
  String results_loadError(String error) {
    return 'تعذّر تحميل النتائج: $error';
  }

  @override
  String get dashboard_title => 'لوحة التخطيط';

  @override
  String get dashboard_noSession => 'لا توجد جلسة نشطة';

  @override
  String get dashboard_empty =>
      'لا توجد جلسة نشطة بعد. ابدأ جلسة لإطلاق ملخّص التخطيط وخطوات العمل وتحليل الحقائق المفقودة.';

  @override
  String get dashboard_goHome => 'العودة إلى الرئيسية لبدء جلسة';

  @override
  String get dashboard_downloadPdf => 'تنزيل PDF';

  @override
  String get dashboard_generatingPdf => 'جارٍ الإنشاء...';

  @override
  String get dashboard_benefitStack => 'حزمة المزايا';

  @override
  String get dashboard_missingFacts => 'أهم الحقائق المفقودة';

  @override
  String get dashboard_actions => 'الإجراءات التالية المقترحة';

  @override
  String get dashboard_sourceHub => 'مركز المصادر الرسمية';

  @override
  String get dashboard_docChecklist => 'قائمة الوثائق';

  @override
  String get dashboard_planningNotes => 'ملاحظات التخطيط';

  @override
  String get dashboard_likelyPrograms => 'برامج محتملة';

  @override
  String get dashboard_possiblePrograms => 'برامج ممكنة';

  @override
  String get dashboard_answeredQuestions => 'أسئلة تمّت الإجابة عليها';

  @override
  String get dashboard_avgRuleCoverage => 'متوسط تغطية القواعد';

  @override
  String get dashboard_estMonthly => 'تقدير المزايا الشهرية';

  @override
  String get dashboard_noBenefitStack => 'لا توجد حزمة مزايا بعد.';

  @override
  String get dashboard_noMissingFacts => 'لا توجد بؤر حقائق مفقودة الآن.';

  @override
  String get dashboard_noActions => 'لا توجد خطوات عمل بعد.';

  @override
  String get dashboard_noSourceHub => 'لا يوجد مركز مصادر رسمي بعد.';

  @override
  String get dashboard_noDocuments =>
      'لا وثائق مطلوبة بعد. أكمل الفحص لرؤية ما تحتاجه.';

  @override
  String get dashboard_noPlanningNotes =>
      'ستظهر ملاحظات التخطيط بعد ظهور النتائج.';

  @override
  String dashboard_loadError(String error) {
    return 'تعذّر تحميل الخطة: $error';
  }

  @override
  String get dashboard_noSessionLink =>
      'لا توجد جلسة نشطة. <a href=\"/\">ابدأ فحصًا</a> أولًا.';

  @override
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  ) {
    return 'الاتساع $breadthLabel ($breadthPercent%) · العمق $depthLabel ($depthPercent%)';
  }

  @override
  String get dashboard_likely => 'محتمل';

  @override
  String get dashboard_possible => 'ممكن';

  @override
  String get dashboard_noTopPrograms => 'لا توجد برامج بارزة بعد.';

  @override
  String dashboard_confidence(String value) {
    return 'الثقة $value/100';
  }

  @override
  String dashboard_affects(String count) {
    return 'يؤثّر على $count من المطابقات.';
  }

  @override
  String dashboard_neededFor(String programs) {
    return 'مطلوب لـ: $programs';
  }

  @override
  String get whatif_title => 'مختبر الافتراضات';

  @override
  String get whatif_pill => 'مقارنة سيناريوهات';

  @override
  String get whatif_noSession =>
      'لا توجد جلسة نشطة. <a href=\"/\">ابدأ فحصًا</a> أولًا.';

  @override
  String get whatif_quickStartIntro =>
      'لا توجد جلسة نشطة. ابدأ واحدة هنا لتشغيل السيناريوهات:';

  @override
  String get whatif_scopeLabel => 'النطاق';

  @override
  String get whatif_stateLabel => 'الولاية';

  @override
  String get whatif_categoriesLabel => 'فئات المزايا';

  @override
  String get whatif_startSession => 'ابدأ الجلسة';

  @override
  String get whatif_description =>
      'شغّل مقارنات سيناريوهات دون تغيير إجاباتك المحفوظة. تُظهر هذه الإعدادات المسبقة كيف تتغيّر مجموعة النتائج عند تبدّل حقيقة من الحياة.';

  @override
  String get whatif_startThenRun => 'ابدأ جلسة، ثم شغّل سيناريو.';

  @override
  String get whatif_noResult => 'لم تُعَد نتيجة سيناريو.';

  @override
  String get whatif_scenarioCompare => 'مقارنة السيناريوهات';

  @override
  String get whatif_likelyDelta => 'فارق محتمل';

  @override
  String get whatif_possibleDelta => 'فارق ممكن';

  @override
  String get whatif_federalDelta => 'فارق اتحادي';

  @override
  String get whatif_stateDelta => 'فارق الولاية';

  @override
  String get whatif_newPrograms => 'برامج جديدة أو مفتوحة';

  @override
  String get whatif_improvedPrograms => 'برامج تحسّنت';

  @override
  String get whatif_noNewMatches =>
      'لا مطابقات إيجابية جديدة في هذا السيناريو.';

  @override
  String get whatif_noImprovements => 'لا تحسينات في الحالة في هذا السيناريو.';

  @override
  String get whatif_toStatus => 'إلى';

  @override
  String get whatif_startFirst => 'ابدأ جلسة قبل تشغيل السيناريوهات.';

  @override
  String get whatif_updated => 'تم تحديث مقارنة السيناريوهات.';

  @override
  String whatif_failed(String error) {
    return 'فشلت مقارنة السيناريوهات: $error';
  }

  @override
  String get explorer_title => 'مستكشف البرامج';

  @override
  String get explorer_refresh => 'تحديث المستكشف';

  @override
  String get explorer_description =>
      'يجمع المستكشف الهجين بين أوصاف الاحتياجات بلغة طبيعية والكتالوج الرسمي. قد يستخدم Gemini للتفسير عند تكوينه، ودائمًا يلجأ إلى المطابقة المحلية المستندة إلى المصادر.';

  @override
  String get explorer_scope => 'النطاق';

  @override
  String get explorer_state => 'الولاية';

  @override
  String get explorer_describe => 'صف ما تحتاجه';

  @override
  String get explorer_describePlaceholder =>
      'مثال: فقدت أحد أفراد عائلتي في كاليفورنيا وأحتاج مساعدة في تكاليف الجنازة ومزايا الباقين.';

  @override
  String get explorer_search => 'بحث بكلمة مفتاحية دقيقة';

  @override
  String get explorer_placeholder =>
      'جرّب: تقاعد، إعاقة، جنازة، قدامى المحاربين...';

  @override
  String get explorer_submit => 'تشغيل البحث الهجين';

  @override
  String get explorer_empty =>
      'استخدم المستكشف لتصفّح كتالوج البرامج الرسمي الحالي.';

  @override
  String get explorer_noMatch =>
      'لا توجد برامج تطابق هذا البحث. جرّب وصفًا أوسع أو أزل أحد المرشحات.';

  @override
  String get explorer_minChars => 'أدخل حرفين على الأقل للبحث الدقيق.';

  @override
  String get explorer_openOfficial => 'افتح الصفحة الحكومية الرسمية';

  @override
  String explorer_failed(String error) {
    return 'فشل المستكشف: $error';
  }

  @override
  String get explorer_methodGemini => 'Gemini + كتالوج مستند';

  @override
  String get explorer_methodHeuristic => 'كتالوج مستند + تفسير محلي';

  @override
  String get explorer_interpretationTitle => 'تفسير البحث';

  @override
  String get explorer_needAreas => 'مجالات الاحتياج';

  @override
  String get explorer_stateLabel => 'الولاية:';

  @override
  String get explorer_searchTerms => 'كلمات البحث:';

  @override
  String explorer_score(String score) {
    return 'النتيجة $score';
  }

  @override
  String get explorer_browseSummary => 'تصفّح كتالوج البرامج الرسمي.';

  @override
  String get explorer_localizedSummary =>
      'يُظهر كيف فُسِّر احتياجك من الكتالوج المحلي المستند.';

  @override
  String get card_confidence => 'الثقة';

  @override
  String get card_clickExpand => '(انقر للتوسيع)';

  @override
  String get card_eligibilityCriteria => 'معايير الأهلية';

  @override
  String get card_criteriaMet => 'مستوفاة';

  @override
  String get card_met => 'مستوفى';

  @override
  String get card_notMet => 'غير مستوفى';

  @override
  String get card_unanswered => 'بدون إجابة';

  @override
  String get card_amount => 'المبلغ';

  @override
  String get card_amountEstimated => ' (تقديري)';

  @override
  String get card_whyMatched => 'لماذا تمت المطابقة';

  @override
  String get card_noMatchedReasons => 'لا توجد أسباب مطابقة بعد.';

  @override
  String get card_missingFacts => 'ما يزال مفقودًا';

  @override
  String get card_noMissingFacts => 'لا حقائق مفقودة في هذه الجولة.';

  @override
  String get card_documentsNeeded => 'الوثائق المطلوبة';

  @override
  String get card_noDocuments => 'لا توجد قائمة وثائق لهذا البرنامج.';

  @override
  String get card_dataGathered => 'بيانات مأخوذة من مواقع حكومية رسمية';

  @override
  String get card_noSources => 'لم تُرفق مصادر حكومية رسمية.';

  @override
  String get card_howToGet => 'كيف تحصل على هذه الميزة';

  @override
  String get card_noApplicationPath =>
      'لا يوجد مسار تقديم رسمي متاح لهذه النتيجة بعد.';

  @override
  String get card_openOfficial => 'افتح الصفحة الحكومية الرسمية';

  @override
  String get card_useSourcesBelow => 'استخدم المصادر الرسمية أدناه.';

  @override
  String get card_notAvailable => 'غير متاح';

  @override
  String get card_unknownAgency => 'وكالة غير معروفة';

  @override
  String get card_noSummary => 'لا يوجد ملخّص.';

  @override
  String get card_noBreakdown => 'لا يوجد تفصيل.';

  @override
  String card_verified(String date) {
    return 'تم التحقّق $date';
  }

  @override
  String get category_children_families => 'الأطفال والأسر';

  @override
  String get category_death => 'الوفاة';

  @override
  String get category_disabilities => 'الإعاقات';

  @override
  String get category_disasters => 'الكوارث';

  @override
  String get category_education => 'التعليم';

  @override
  String get category_food => 'الغذاء';

  @override
  String get category_general => 'عام';

  @override
  String get category_health => 'الصحة';

  @override
  String get category_housing_utilities => 'السكن والمرافق';

  @override
  String get category_jobs_unemployment => 'العمل والبطالة';

  @override
  String get category_military_veterans => 'العسكريون والمحاربون القدامى';

  @override
  String get category_retirement_seniors => 'التقاعد وكبار السن';

  @override
  String get category_welfare_cash_assistance => 'الرعاية والمساعدة النقدية';

  @override
  String get breadth_focused =>
      '«مركّز» يبقي الفحص قصيرًا ويركّز على إشارات البرامج الأقوى.';

  @override
  String get breadth_balanced =>
      '«متوازن» يستكشف عددًا معتدلًا من البرامج المحتملة قبل التوقف.';

  @override
  String get breadth_broad =>
      '«واسع» يستمر في الاستكشاف لتغطية مزيد من البرامج المحتملة.';

  @override
  String get depth_light =>
      '«نظرة عامة» يُبقي الأسئلة عامة، عادةً نعم/لا أو فئات بسيطة.';

  @override
  String get depth_standard =>
      '«قياسي» يمزج أسئلة فحص عامة مع متابعات أكثر تحديدًا.';

  @override
  String get depth_detailed =>
      '«مفصّل» يسأل عن مبالغ وتواريخ ومُدد وحقائق دقيقة عند توفّرها.';

  @override
  String get scenario_limitedIncome => 'لو كان لديّ دخل وموارد محدودة';

  @override
  String get scenario_limitedIncomeDesc =>
      'مفيد للمساعدة النقدية أو التخطيط بأسلوب SSI.';

  @override
  String get scenario_disability => 'لو كانت لديّ إعاقة مؤهّلة';

  @override
  String get scenario_disabilityDesc =>
      'يختبر مسارات الإعاقة وقواعد القيود على العمل.';

  @override
  String get scenario_military => 'لو كانت لديّ خدمة عسكرية فعلية';

  @override
  String get scenario_militaryDesc =>
      'يتحقّق ما إذا كانت الخدمة تفتح مزايا قدامى المحاربين.';

  @override
  String get scenario_familyDeath => 'لو حصلت وفاة عائلية حديثة';

  @override
  String get scenario_familyDeathDesc =>
      'يستكشف مسارات مساعدة الباقين والجنازة.';

  @override
  String get status_likely_eligible => 'مؤهّل غالبًا';

  @override
  String get status_possibly_eligible => 'ربما مؤهّل';

  @override
  String get status_unclear => 'غير واضح';

  @override
  String get status_likely_ineligible => 'غير مؤهّل غالبًا';

  @override
  String get sensitivity_low => 'منخفضة';

  @override
  String get sensitivity_medium => 'متوسطة';

  @override
  String get sensitivity_high => 'عالية';

  @override
  String get certainty_rule_coverage => 'تغطية القواعد';

  @override
  String get certainty_source_authority => 'موثوقية المصدر';

  @override
  String get certainty_source_freshness => 'حداثة المصدر';

  @override
  String get certainty_program_determinism => 'حتمية البرنامج';

  @override
  String get certainty_amount_determinism => 'حتمية المبلغ';

  @override
  String get intake_scope_federal => 'اتحادي فقط حاليًا';

  @override
  String get intake_scope_state => 'فحص خاص بالولاية';

  @override
  String get intake_scope_both => 'فحص اتحادي وللولاية';

  @override
  String get intake_fact_state_code => 'تم اختيار الولاية';

  @override
  String get intake_fact_applicant_income => 'دخل وموارد محدودة';

  @override
  String get intake_fact_applicant_disability => 'إعاقة أو حالة مؤهّلة';

  @override
  String get intake_fact_applicant_ability_to_work =>
      'غير قادر على العمل لسنة أو أكثر';

  @override
  String get intake_fact_applicant_served_in_active_military =>
      'خدمة عسكرية فعلية';

  @override
  String get intake_fact_applicant_service_disability => 'إعاقة مرتبطة بالخدمة';

  @override
  String get intake_fact_applicant_dolo => 'وفاة حديثة في العائلة';

  @override
  String get intake_fact_deceased_died_of_COVID => 'وفاة مرتبطة بـ COVID';

  @override
  String get intake_fact_deceased_death_location_is_US =>
      'حدثت الوفاة داخل الولايات المتحدة';

  @override
  String get intake_fact_applicant_paid_into_SS =>
      'عملت ودفعت ضرائب Social Security';

  @override
  String get intake_fact_recent_job_loss => 'فقدان عمل أو تقليل ساعات حديث';

  @override
  String get intake_fact_housing_urgency => 'ضغط طارئ في السكن أو المرافق';

  @override
  String get intake_fact_food_insecurity => 'ضائقة غذائية';

  @override
  String get intake_fact_current_student => 'تلتحق حاليًا بدراسة أو تدريب مهني';

  @override
  String get intake_fact_has_children => 'أطفال أو معالون في الأسرة';

  @override
  String get intake_fact_is_62_or_older => '62 عامًا أو أكثر';

  @override
  String get intake_fact_recent_disaster_impact => 'تأثّر بكارثة حديثة';

  @override
  String get intake_fact_needs_health_coverage =>
      'يحتاج تغطية صحية أو مساعدة طبية';

  @override
  String get intake_fact_annual_income_amount => 'الدخل السنوي التقريبي';

  @override
  String get docType_required => 'مطلوب';

  @override
  String get docType_recommended => 'موصى به';

  @override
  String get reviewStatus_open => 'مفتوح';

  @override
  String get reviewDiff_eligibility => 'الأهلية';

  @override
  String get reviewDiff_structural => 'بنيوي';

  @override
  String get reviewDiff_content => 'المحتوى';

  @override
  String get server_step_startState =>
      'ابدأ من الموقع الرسمي للخدمات الاجتماعية في ولايتك.';

  @override
  String get server_step_useStateTools =>
      'استخدم أدوات أو صفحات البرامج الرسمية بالولاية لاختيار الميزة التي تحتاجها.';

  @override
  String get server_step_followStateInstructions =>
      'اتّبع تعليمات الولاية الرسمية حول الوثائق أو الاتصال بالمكتب المحلي أو التقديم عبر الإنترنت.';

  @override
  String get server_step_reviewEligibility =>
      'راجع المصدر الحكومي الرسمي للأهلية المُستخدم لهذه المطابقة.';

  @override
  String get server_step_openOfficial =>
      'افتح الصفحة الحكومية الرسمية لبدء الطلب أو متابعته.';

  @override
  String get server_step_useSamePage =>
      'استخدم الصفحة الرسمية نفسها للوثائق أو فحص الحالة أو بيانات الاتصال بالوكالة.';

  @override
  String server_note_strongMatches(String plural, String count) {
    return 'لديك بالفعل $count مطابقة قوية$plural للسعي إليها على المواقع الحكومية الرسمية.';
  }

  @override
  String server_note_possibleMatches(String plural, String count) {
    return 'لديك $count مطابقة محتملة$plural؛ ستُحسّن الإجابة على بضعة أسئلة هذه النتائج.';
  }

  @override
  String server_note_biggestGap(String label) {
    return 'أكبر فجوة معلومات الآن هي: $label.';
  }

  @override
  String get server_note_chooseState =>
      'اختر ولاية لفتح مسارات مزايا الولاية الرسمية.';

  @override
  String get admin_invalidKey =>
      'تم رفض مفتاح المسؤول المحفوظ. حدّثه وحاول مجددًا.';

  @override
  String get admin_requiredKey =>
      'مفتاح المسؤول مطلوب. أدخله في حقل وصول المسؤول لاستخدام إجراءات المراجعة والمزامنة.';

  @override
  String errors_requestFailed(String status) {
    return 'فشل الطلب بحالة $status.';
  }

  @override
  String get errors_genericTitle => 'حدث خطأ ما';

  @override
  String get errors_generic => 'حدث خطأ ما. يرجى المحاولة مجددًا.';

  @override
  String get errors_validation =>
      'تعذّر معالجة هذا الطلب — حدّث الصفحة وحاول مجددًا.';

  @override
  String get errors_rateLimited =>
      'طلبات كثيرة جدًا. انتظر دقيقة وحاول مجددًا.';

  @override
  String get errors_server => 'تواجه خدمتنا مشاكل. يرجى المحاولة لاحقًا.';

  @override
  String get errors_network => 'تعذّر الوصول إلى الخادم. تحقّق من اتصالك.';

  @override
  String get errors_timeout => 'انتهت مهلة الطلب. يرجى المحاولة مجددًا.';

  @override
  String get errors_auth => 'تحتاج إلى تسجيل الدخول لفعل ذلك.';

  @override
  String get errors_notFound => 'لم نتمكّن من العثور على ما تبحث عنه.';

  @override
  String get errors_tryAgain => 'حاول مجددًا';

  @override
  String results_federalSection(int count) {
    return 'البرامج الاتحادية ($count)';
  }

  @override
  String results_stateSection(int count) {
    return 'برامج الولاية ($count)';
  }

  @override
  String get results_emptyFederal =>
      'لا توجد برامج اتحادية مطابقة. أجب على المزيد من الأسئلة أو وسّع نطاق فحصك.';

  @override
  String get results_emptyState =>
      'لا توجد برامج للولاية مطابقة بعد. أضف ولايتك في الفحص لرؤية البرامج المحلية.';

  @override
  String get results_viewActionPlan => 'عرض خطة العمل';

  @override
  String get results_couldNotLoad => 'تعذّر تحميل نتائجك.';

  @override
  String get dashboard_couldNotLoad => 'تعذّر تحميل خطة العمل الخاصة بك.';

  @override
  String get dashboard_applyLinkUnavailable =>
      'رابط التقديم غير متاح — تواصل مع وكالتك المحلية.';

  @override
  String get dashboard_apply => 'قدّم';

  @override
  String dashboard_step(int n) {
    return 'الخطوة $n';
  }

  @override
  String get dashboard_emptyStack =>
      'لا توجد لديك حزمة مزايا بعد. أكمل فحصك لتعبئتها.';

  @override
  String get dashboard_emptyActions =>
      'لا إجراءات تالية بعد — أجب على بضعة أسئلة لخطة مخصّصة.';

  @override
  String get dashboard_emptyDocuments => 'لا وثائق لجمعها بعد.';

  @override
  String get dashboard_emptyNotes => 'لا ملاحظات إضافية لوضعك.';

  @override
  String get dashboard_emptySources => 'لا توجد روابط مصادر متاحة.';

  @override
  String get dashboard_helpNarrowDown => 'ساعدنا في تضييق النطاق';

  @override
  String get dashboard_missingFactsHint => 'الإجابة على هذه يفتح مطابقات أدق.';

  @override
  String get dashboard_resumeScreening => 'استئناف الفحص';

  @override
  String get dashboard_documentsTitle => 'الوثائق المطلوب جمعها';

  @override
  String get dashboard_notesTitle => 'ملاحظات التخطيط';

  @override
  String get dashboard_sourceHubTitle => 'مركز المصادر الرسمية';

  @override
  String get dashboard_stackTitle => 'حزمة مزاياك';

  @override
  String get dashboard_actionsTitle => 'الإجراءات التالية';

  @override
  String get status_likelyEligible => 'مؤهّل غالبًا';

  @override
  String get status_possiblyEligible => 'ربما مؤهّل';

  @override
  String get status_likelyIneligible => 'غالبًا غير مؤهّل';

  @override
  String get dynamic_question_dob => 'ما تاريخ ميلادك؟';

  @override
  String get dynamic_hint_dobExample => 'مثال: 1990-01-20';

  @override
  String get dynamic_question_paidIntoSS =>
      'هل سبق أن عملت ودفعت ضرائب Social Security الأمريكية؟';

  @override
  String get dynamic_question_limitedIncome => 'هل لديك دخل وموارد محدودة؟';

  @override
  String get dynamic_hint_limitedIncome =>
      'هذا سؤال فحص عام، وليس قرارًا نهائيًا.';

  @override
  String get dynamic_question_disability => 'هل لديك إعاقة أو حالة مؤهّلة؟';

  @override
  String get dynamic_question_unableToWork =>
      'هل أنت غير قادر على العمل لسنة أو أكثر بسبب الإعاقة؟';

  @override
  String get dynamic_question_activeMilitary =>
      'هل خدمت في الجيش الفعلي أو البحرية أو القوات الجوية؟';

  @override
  String get dynamic_question_serviceDisabilityDetailed =>
      'هل سبّبت خدمتك العسكرية الفعلية إعاقتك أو زادتها سوءًا؟';

  @override
  String get dynamic_question_familyDeathDetailed =>
      'هل واجهت مؤخّرًا وفاة فرد من العائلة المباشرة؟';

  @override
  String get dynamic_question_dateOfDeath => 'ما تاريخ الوفاة؟';

  @override
  String get dynamic_hint_dateOfDeath =>
      'إن لم تعرف التاريخ بدقّة، أدخل تاريخًا تقريبيًا.';

  @override
  String get dynamic_question_covidDeath => 'هل ارتبطت الوفاة بـ COVID-19؟';

  @override
  String get dynamic_question_deathInUs =>
      'هل توفي الشخص داخل الولايات المتحدة؟';

  @override
  String get dynamic_hint_deathInUs =>
      'بما يشمل بورتوريكو والأقاليم الأمريكية.';

  @override
  String get dynamic_question_householdIncome =>
      'ما الدخل السنوي التقريبي للأسرة؟';

  @override
  String get dynamic_hint_householdIncome =>
      'للمرجع: عتبة الفقر الاتحادية لعام 2024 هي 15,060 \$ سنويًا لأسرة فرد واحد. تستخدم برامج كثيرة 130–200% من هذا الحد.';

  @override
  String get dynamic_question_disabilityType =>
      'ما نوع الإعاقة أو الحالة لديك؟';

  @override
  String get dynamic_hint_disabilityType =>
      'اختر كل ما ينطبق. وفق قواعد SSA يجب أن تحدّ الإعاقة بشكل ملحوظ من القدرة على أداء أنشطة العمل الأساسية.';

  @override
  String get dynamic_question_monthsUnableToWork =>
      'كم شهرًا منعتك حالتك من العمل؟';

  @override
  String get dynamic_hint_monthsUnableToWork =>
      'يتطلّب SSDI عدم القدرة على ممارسة نشاط مكسب جوهري لمدة 12 شهرًا متّصلة على الأقل (42 U.S.C. § 423(d)(1)(A)).';

  @override
  String get dynamic_question_approxAge => 'كم عمرك تقريبًا؟';

  @override
  String get dynamic_hint_approxAge => 'تكفي عمر تقريبي لفحص سريع.';

  @override
  String get dynamic_question_exactDob => 'ما تاريخ ميلادك بدقّة؟';

  @override
  String get dynamic_hint_exactDob =>
      'يختلف سنّ التقاعد الكامل: 66 لمن وُلد بين 1943–1954، ويزيد تدريجيًا إلى 67 لمن وُلد عام 1960 فأحدث (42 U.S.C. § 416(l)).';

  @override
  String get dynamic_question_militaryVeteran => 'هل أنت من قدامى المحاربين؟';

  @override
  String get dynamic_hint_activeMilitary =>
      'تتطلّب مزايا VA خدمة فعلية. خدمة الاحتياط/الحرس الوطني قد تؤهّل إذا تم تنشيطها بأمر اتحادي (38 U.S.C. § 101(2)).';

  @override
  String get dynamic_question_serviceDisabilitySimple =>
      'هل ترتبط إعاقتك بالخدمة العسكرية؟';

  @override
  String get dynamic_hint_serviceDisabilityDetailed =>
      'يتطلّب تعويض إعاقة VA حالة مرتبطة بالخدمة بتقييم لا يقلّ عن 10% (38 U.S.C. § 1110).';

  @override
  String get dynamic_question_familyDeathSimple =>
      'هل فقدت مؤخّرًا فردًا من عائلتك؟';

  @override
  String get dynamic_hint_familyDeathDetailed =>
      'تعتمد أهلية مزايا الباقين على علاقتك بالمتوفّى وتاريخ عمله (42 U.S.C. § 402).';

  @override
  String get dynamic_question_stateCode =>
      'ما الولاية أو الإقليم الذي تريد مزاياه؟';

  @override
  String get dynamic_hint_stateCode =>
      'تختلف مزايا الولايات بحسب الولاية وتُحفظ منفصلة عن المطابقات الاتحادية.';

  @override
  String get dynamic_option_yes => 'نعم';

  @override
  String get dynamic_option_no => 'لا';

  @override
  String get dynamic_option_physicalDisability => 'إعاقة جسدية';

  @override
  String get dynamic_option_cognitiveDisability => 'إعاقة إدراكية أو ذهنية';

  @override
  String get dynamic_option_sensoryDisability => 'إعاقة حسّية (بصر/سمع)';

  @override
  String get dynamic_option_mentalHealth => 'حالة صحة نفسية';

  @override
  String get dynamic_option_chronicIllness => 'مرض مزمن';

  @override
  String get dynamic_option_noneOfTheAbove => 'لا شيء مما سبق';

  @override
  String get dynamic_summary_retirement =>
      'دخل تقاعد شهري لمن عمل ودفع ضرائب Social Security.';

  @override
  String get dynamic_summary_ssdi =>
      'مزايا إعاقة شهرية (SSDI) لمن دفع لـ Social Security ولا يستطيع العمل بسبب الإعاقة.';

  @override
  String get dynamic_summary_ssi =>
      'دعم شهري (SSI) لكبار السن وذوي الإعاقة بدخل وموارد محدودة.';

  @override
  String get dynamic_summary_vaDisability =>
      'مدفوعات شهرية معفاة من الضرائب (VA Disability) للمحاربين القدامى الذين سبّبت لهم الخدمة الفعلية إعاقة أو زادتها سوءًا.';

  @override
  String get dynamic_summary_survivor =>
      'مدفوعات Social Security شهرية لأفراد الأسرة المؤهّلين بعد وفاة العامل.';

  @override
  String get dynamic_summary_funeral =>
      'مساعدة مالية لتكاليف الجنازة لمن توفي بـ COVID-19 داخل الولايات المتحدة (FEMA).';

  @override
  String get dynamic_reason_paidIntoSS => 'عملت ودفعت ضرائب Social Security.';

  @override
  String get dynamic_reason_retirementAge => 'بلغت سنّ التقاعد على الأقل.';

  @override
  String get dynamic_reason_limitedIncome => 'لديك دخل وموارد محدودة.';

  @override
  String get dynamic_reason_disability => 'لديك إعاقة أو حالة مؤهّلة.';

  @override
  String get dynamic_reason_unableToWork =>
      'لا تستطيع العمل لسنة أو أكثر بسبب الإعاقة.';

  @override
  String get dynamic_reason_activeMilitary => 'خدمت في الجيش الفعلي.';

  @override
  String get dynamic_reason_serviceDisability =>
      'سبّبت الخدمة الفعلية إعاقتك أو زادتها سوءًا.';

  @override
  String get dynamic_reason_familyDeath => 'واجهت مؤخّرًا وفاة فرد من العائلة.';

  @override
  String get dynamic_reason_covidDeath => 'ارتبطت وفاة المتوفّى بـ COVID-19.';

  @override
  String get dynamic_reason_diedInUs => 'توفي المتوفّى داخل الولايات المتحدة.';

  @override
  String get dynamic_reason_afterDate => 'توفي المتوفّى بعد 20 مايو 2020.';

  @override
  String get dynamic_amount_ssi =>
      'حتى 943 \$/شهر للأفراد، 1,415 \$/شهر للأزواج (تعريفات 2024).';

  @override
  String get dynamic_amount_retirement =>
      'يعتمد المبلغ الشهري على تاريخ العمل وعمر المطالبة.';

  @override
  String get dynamic_amount_ssdi => 'يعتمد المبلغ الشهري على تاريخ العمل.';

  @override
  String get dynamic_amount_vaDisability =>
      'يعتمد المبلغ على تقييم الإعاقة والمعالين.';

  @override
  String get dynamic_amount_survivor =>
      'يعتمد المبلغ الشهري على سجل العامل وعلاقتك به.';

  @override
  String get dynamic_amount_funeral =>
      'يعتمد مبلغ الاسترداد على نفقات الجنازة المؤهّلة.';

  @override
  String get dynamic_document_ssnCard => 'بطاقة أو رقم Social Security (SSN)';

  @override
  String get dynamic_document_ssnCardDesc => 'رقم SSN المكوّن من 9 أرقام';

  @override
  String get dynamic_document_proofOfAge => 'إثبات العمر';

  @override
  String get dynamic_document_proofOfAgeDesc => 'شهادة ميلاد أو جواز سفر';

  @override
  String get dynamic_document_w2 => 'نماذج W-2 أو إقرارات ضرائب العمل الحرّ';

  @override
  String get dynamic_document_w2RecentDesc => 'سجل دخل آخر سنة';

  @override
  String get dynamic_document_w2CurrentPriorDesc =>
      'سجلات دخل السنة الحالية والسابقة';

  @override
  String get dynamic_document_bankInfo => 'معلومات الحساب البنكي';

  @override
  String get dynamic_document_bankInfoDesc => 'للإيداع المباشر للمزايا';

  @override
  String get dynamic_document_medicalRecords => 'السجلات الطبية';

  @override
  String get dynamic_document_medicalRecordsDesc =>
      'وثائق إعاقتك من أطباء أو مستشفيات أو عيادات';

  @override
  String get dynamic_document_incomeResources => 'إثبات الدخل والموارد';

  @override
  String get dynamic_document_incomeResourcesDesc =>
      'كشوف رواتب أو كشوف بنكية أو خطابات منح مزايا';

  @override
  String get dynamic_document_disabilityDocsDesc => 'وثائق إعاقتك';

  @override
  String get dynamic_document_livingArrangement => 'إثبات السكن';

  @override
  String get dynamic_document_livingArrangementDesc =>
      'عقد إيجار أو كشف رهن أو خطاب من المالك';

  @override
  String get dynamic_document_citizenship => 'إثبات الجنسية أو وضع الهجرة';

  @override
  String get dynamic_document_citizenshipDesc =>
      'شهادة ميلاد أو جواز سفر أو وثائق هجرة';

  @override
  String get dynamic_document_dd214 => 'DD-214 (وثائق التسريح)';

  @override
  String get dynamic_document_dd214Desc =>
      'شهادة الإفراج أو التسريح من الخدمة الفعلية';

  @override
  String get dynamic_document_serviceEvidenceDesc =>
      'أدلة تربط إعاقتك بالخدمة العسكرية';

  @override
  String get dynamic_document_vaForm => 'نموذج VA رقم 21-526EZ';

  @override
  String get dynamic_document_vaFormDesc => 'طلب تعويض الإعاقة';

  @override
  String get dynamic_document_deceasedSsn => 'رقم Social Security للمتوفى';

  @override
  String get dynamic_document_deceasedSsnDesc => 'SSN العامل';

  @override
  String get dynamic_document_deathCertificate => 'شهادة الوفاة';

  @override
  String get dynamic_document_deathCertificateDesc =>
      'نسخة مُصدّقة من شهادة الوفاة';

  @override
  String get dynamic_document_relationshipProof => 'إثبات صلة القرابة';

  @override
  String get dynamic_document_relationshipProofDesc =>
      'شهادة زواج أو ميلاد أو وثائق تبنّي';

  @override
  String get dynamic_document_covidDeathCertificateDesc =>
      'يجب أن تنسب الوفاة إلى COVID-19';

  @override
  String get dynamic_document_funeralReceipts => 'إيصالات نفقات الجنازة';

  @override
  String get dynamic_document_funeralReceiptsDesc =>
      'إيصالات تفصيلية أو عقود من مزوّدي الجنازة';

  @override
  String get dynamic_document_usResidency =>
      'إثبات الإقامة في الولايات المتحدة';

  @override
  String get dynamic_document_usResidencyDesc =>
      'للشخص الذي تكبّد نفقات الجنازة';

  @override
  String get dynamic_document_femaAppNumber => 'رقم طلب FEMA';

  @override
  String get dynamic_document_femaAppNumberDesc =>
      'إن سبق أن قدّمت طلب مساعدة FEMA آخر';

  @override
  String get lang_en => 'English';

  @override
  String get lang_es => 'Español';

  @override
  String get brand_name => 'Benefits Digger';

  @override
  String get brand_tagline =>
      'اعثر على كل ميزة قد تكون مؤهلًا لها. مدعومة بمصادر رسمية.';

  @override
  String get nav_screen => 'الفحص';

  @override
  String get nav_chat => 'المساعد';

  @override
  String get nav_programs => 'البرامج';

  @override
  String get nav_skipToContent => 'تخطّي إلى المحتوى الرئيسي';

  @override
  String get nav_openMenu => 'افتح القائمة';

  @override
  String get nav_closeMenu => 'أغلق القائمة';

  @override
  String get theme_toggle => 'تبديل المظهر';

  @override
  String get theme_light => 'فاتح';

  @override
  String get theme_dark => 'داكن';

  @override
  String get theme_system => 'النظام';

  @override
  String get language_switcher => 'اللغة';

  @override
  String get landing_eyebrow => 'خطّط بثقة';

  @override
  String get landing_heroTitle =>
      'اطّلع على كل ميزة حكومية قد تكون مؤهلًا لها.';

  @override
  String get landing_heroLede =>
      'يأخذك Benefits Digger في محادثة قصيرة، يفحص أهليتك ضمن البرامج الاتحادية وبرامج الولايات، ويُسند كل مطابقة إلى مصدر رسمي.';

  @override
  String get landing_startScreening => 'ابدأ الفحص';

  @override
  String get landing_startScreeningHint => 'إرشاد بخمس دقائق. خاص. بدون حساب.';

  @override
  String get landing_askAssistant => 'اسأل المساعد';

  @override
  String get landing_askAssistantHint => 'صف وضعك بكلماتك الخاصة.';

  @override
  String get landing_browsePrograms => 'تصفّح البرامج';

  @override
  String get landing_browseProgramsHint => 'ابحث في كتالوج البرامج الرسمي.';

  @override
  String get landing_howItWorksTitle => 'آلية العمل';

  @override
  String get landing_howItWorksLede => 'ثلاث خطوات تحترم وقتك ووضعك.';

  @override
  String get landing_step1Title => 'أخبرنا بما يحدث';

  @override
  String get landing_step1Body =>
      'اكتب جملة عن وضعك أو أجب عن بضعة أسئلة قصيرة بنعم/لا. سنحوّل قصتك إلى فحص منظّم.';

  @override
  String get landing_step2Title => 'نطابق ضد القواعد الرسمية';

  @override
  String get landing_step2Body =>
      'كل برنامج يُسجَّل وفق أحدث قواعد الأهلية الاتحادية أو في الولاية. وحيث تنقص البيانات، نقول ذلك بوضوح.';

  @override
  String get landing_step3Title => 'اخرج بخطّة';

  @override
  String get landing_step3Body =>
      'احصل على قائمة خطوات تالية، الوثائق المطلوبة، وروابط مباشرة لصفحات التقديم الرسمية.';

  @override
  String get landing_trustTitle => 'لماذا يثق الناس بالنتائج';

  @override
  String get landing_trustOfficial => 'مصدرها وثائق .gov رسمية';

  @override
  String get landing_trustOfficialBody =>
      'كل مطابقة مستندة إلى قواعد منشورة من الوكالات وتُحيل إلى الصفحة الأصلية.';

  @override
  String get landing_trustPrivate => 'خاص افتراضيًا';

  @override
  String get landing_trustPrivateBody =>
      'تبقى إجاباتك ضمن جلسة المتصفح. لا نبيع، لا نشارك، ولا نطلب تسجيل دخول.';

  @override
  String get landing_trustExplainable => 'ثقة قابلة للتفسير';

  @override
  String get landing_trustExplainableBody =>
      'نوضّح سبب مطابقة كل برنامج، وما الناقص، ومدى ثقة الفحص.';

  @override
  String get landing_comingSoon => 'قريبًا';

  @override
  String get landing_comingSoonBody =>
      'هذا الجزء من Benefits Digger قيد البناء. عُد لاحقًا.';

  @override
  String get landing_notFoundTitle => 'لم نتمكّن من العثور على هذه الصفحة';

  @override
  String get landing_notFoundBody =>
      'الصفحة التي تبحث عنها انتقلت أو غير موجودة.';

  @override
  String get landing_notFoundCta => 'العودة إلى الرئيسية';

  @override
  String get landing_errorTitle => 'حدث خطأ ما';

  @override
  String get landing_errorBody =>
      'حدث خطأ غير متوقّع أثناء تحميل هذه الصفحة. حاول مجددًا، وإذا استمرّ فقد تم إخطار الفريق.';

  @override
  String get landing_errorRetry => 'حاول مجددًا';

  @override
  String get landing_loading => 'جارٍ التحميل...';

  @override
  String get footer_disclaimer =>
      'Benefits Digger أداة فحص مستقلة. ليست تابعة للحكومة الفيدرالية الأمريكية أو لأي وكالة ولاية، ولا تُموّل أو تُدار من قبلها. الأهلية النهائية تحدّدها الوكالة المسؤولة عن الميزة.';

  @override
  String get footer_privacy => 'الخصوصية';

  @override
  String get footer_sources => 'المصادر الرسمية';

  @override
  String get footer_about => 'عن المنصة';

  @override
  String footer_copyright(String year) {
    return '$year Benefits Digger';
  }

  @override
  String get helpBot_title => 'مساعدة في هذا التطبيق';

  @override
  String get helpBot_placeholder => 'اسأل عن كيفية استخدام التطبيق…';

  @override
  String get helpBot_openLabel => 'الحصول على مساعدة لهذا التطبيق';

  @override
  String get helpBot_emptyState =>
      'اسأل عن كيفية استخدام ميزة، الانتقال إلى صفحة، أو فهم سؤال فحص. (للأسئلة المتعلقة بالمزايا استخدم الدردشة الرئيسية.)';

  @override
  String get helpBot_streaming => 'أفكّر…';

  @override
  String get helpBot_error =>
      'تعذّر الوصول إلى مساعد المساعدة. حاول مجددًا بعد قليل.';

  @override
  String get helpBot_close => 'أغلق المساعدة';
}
