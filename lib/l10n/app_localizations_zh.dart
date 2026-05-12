// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get nav_home => '首页';

  @override
  String get nav_dashboard => '规划面板';

  @override
  String get nav_results => '结果';

  @override
  String get nav_whatif => '假设实验室';

  @override
  String get nav_explorer => '项目浏览器';

  @override
  String get page_homeTitle => 'Benefits Digger';

  @override
  String get page_dashboardTitle => '规划面板 - Benefits Digger';

  @override
  String get page_resultsTitle => '结果 - Benefits Digger';

  @override
  String get page_whatifTitle => '假设实验室 - Benefits Digger';

  @override
  String get page_explorerTitle => '项目浏览器 - Benefits Digger';

  @override
  String get app_eyebrow => 'Benefits Digger';

  @override
  String get app_headline => '依据政府官方信息,规划、对比并申请福利。';

  @override
  String get app_lede => '筛查福利,对比假设场景,浏览官方目录,带着基于政府来源的清晰行动计划离开。';

  @override
  String get home_startScreening => '开始筛查';

  @override
  String get home_trustPrivate => '您的数据是私密的,绝不存储。';

  @override
  String get home_trustSources => '数据直接来自官方政府项目。';

  @override
  String get home_scope => '范围';

  @override
  String get home_scopeBoth => '联邦和州';

  @override
  String get home_scopeFederal => '仅联邦';

  @override
  String get home_scopeState => '仅州';

  @override
  String get home_state => '州';

  @override
  String get home_chooseState => '选择一个州';

  @override
  String get home_breadth => '广度';

  @override
  String get home_breadthFocused => '聚焦';

  @override
  String get home_breadthBalanced => '均衡';

  @override
  String get home_breadthBroad => '广泛';

  @override
  String get home_depth => '深度';

  @override
  String get home_depthLight => '概要';

  @override
  String get home_depthStandard => '标准';

  @override
  String get home_depthDetailed => '详细';

  @override
  String get home_categories => '福利类别';

  @override
  String get home_categoriesHint => '至少选择一个类别,以查找您可能符合资格的福利及申请方式。';

  @override
  String get home_selectAll => '全选';

  @override
  String get home_clear => '清除';

  @override
  String get home_apply => '应用选项';

  @override
  String get home_reset => '重置';

  @override
  String get home_refreshSources => '刷新官方来源';

  @override
  String get home_questionFlow => '问题流程';

  @override
  String get home_questionEmpty => '开始一个会话以启动筛查。';

  @override
  String get home_saveAnswer => '保存答案';

  @override
  String get home_backQuestion => '返回上一个问题';

  @override
  String get home_showResults => '立即显示结果';

  @override
  String get home_reviewQueue => '审核队列';

  @override
  String get home_refreshQueue => '刷新队列';

  @override
  String get home_noReviewTasks => '暂无审核任务。';

  @override
  String home_breadthApprox(String description, String count) {
    return '$description(约 $count 个问题)';
  }

  @override
  String home_depthApprox(String description) {
    return '$description';
  }

  @override
  String get home_noMoreQuestions => '没有更多问题排队。结果已就绪。';

  @override
  String get home_noProgramsFound => '未找到与您的选择匹配的福利项目。请尝试扩大类别或选择其他州。';

  @override
  String get home_selectCategory => '请在应用选项之前至少选择一个类别。';

  @override
  String get home_chooseScope => '在开始会话前,请先选择筛查范围。';

  @override
  String get home_chooseStateMsg => '在开始州或联合筛查之前,请先选择一个州。';

  @override
  String get home_chooseOne => '选择一项';

  @override
  String get home_searching => '搜索中...';

  @override
  String get home_creatingSession => '正在创建会话...';

  @override
  String get home_creatingSessionState => '正在创建会话并加载州福利...';

  @override
  String home_sessionLive(String sessionId) {
    return '会话 $sessionId 已启动。';
  }

  @override
  String home_sessionError(String error) {
    return '无法启动会话:$error';
  }

  @override
  String get home_answerRequired => '请先选择一个答案再继续。';

  @override
  String get home_answerSaved => '答案已保存。';

  @override
  String home_answerError(String error) {
    return '无法保存答案:$error';
  }

  @override
  String get home_resultsRefreshed => '结果已刷新。';

  @override
  String get home_refreshingOfficialSources => '正在刷新官方来源...';

  @override
  String get home_officialSourcesRefreshed => '官方来源已刷新。';

  @override
  String home_syncSummary(String added, String crawled) {
    return '官方来源已刷新。已抓取 $crawled 个项目站点,新增 $added 个政府页面来源。';
  }

  @override
  String home_syncFailed(String error) {
    return '同步失败:$error';
  }

  @override
  String home_sensitivity(String level) {
    return '$level 敏感度';
  }

  @override
  String get home_sourceLabel => '来源';

  @override
  String home_reviewTaskMeta(String score, String diffType) {
    return '$diffType · 重要性 $score';
  }

  @override
  String get home_adminKey => '管理员访问密钥';

  @override
  String get home_adminPlaceholder => '仅在启用管理员保护时需要';

  @override
  String get home_adminHelp => '仅用于审核队列和来源刷新操作。在您清除之前保存在此浏览器标签页中。';

  @override
  String get home_saveKey => '保存密钥';

  @override
  String get home_clearKey => '清除密钥';

  @override
  String get home_adminSaved => '管理员密钥已为本浏览器标签页保存。';

  @override
  String get home_adminCleared => '管理员密钥已清除。';

  @override
  String get home_lifeIntakePill => '生活事件输入';

  @override
  String get home_lifeIntakeTitle => '描述您的情况';

  @override
  String get home_lifeIntakeLabel => '用您自己的话告诉我们您的困难';

  @override
  String get home_lifeIntakePlaceholder => '示例:我失业了,房租拖欠,正在了解是否有食物和医疗援助。';

  @override
  String get home_lifeIntakeHint =>
      '您不需要先把问题分类。我们会把您的描述转换为建议的类别、可能的事实以及最关键的下一步问题。';

  @override
  String get home_lifeIntakeAnalyze => '分析我的情况';

  @override
  String get home_lifeIntakeClear => '清除输入';

  @override
  String get home_lifeSummaryTitle => '我听到的内容';

  @override
  String get home_lifeSuggestedScope => '建议范围';

  @override
  String get home_lifeSuggestedState => '建议州';

  @override
  String get home_lifeCategoriesTitle => '建议的福利领域';

  @override
  String get home_lifeFactsTitle => '目前的结构化事实';

  @override
  String get home_lifeMissingTitle => '仍可询问';

  @override
  String get home_lifeApply => '在筛查器中使用这些建议';

  @override
  String get home_lifeStart => '从聊天开始筛查';

  @override
  String get home_lifeChatTitle => '福利助手';

  @override
  String get home_lifeAssistantName => 'Zobo';

  @override
  String get home_lifeChatLauncherLabel => '打开 Zobo 助手';

  @override
  String get home_lifeChatClose => '最小化助手';

  @override
  String get home_lifeChatMinimize => '最小化';

  @override
  String get home_lifeChatHint => '告诉我您的情况,我会一次问一个简短的后续问题。';

  @override
  String get home_lifeChatEmpty => '先描述您正在面对的情况,我会把它转换为福利领域和后续问题。';

  @override
  String get home_lifeChatInputLabel => '回复助手';

  @override
  String get home_lifeChatWelcome => '您好。我是 Zobo。简单告诉我您的情况,我会帮您理清下一步。';

  @override
  String get home_lifeChatWelcomeSession =>
      '您好。我是 Zobo。在您查看本会话时我可以陪您。请让我解释结果、缺失事实或下一步该做什么。';

  @override
  String get home_lifeChatPlaceholder => '试试:我失业了,房租拖欠,需要食物援助。';

  @override
  String get home_lifeChatPlaceholderYesNo => '这里简短的“是”或“否”就够了。';

  @override
  String get home_lifeChatPlaceholderState => '回复一个州,例如 CA、加利福尼亚或纽约。';

  @override
  String get home_lifeChatSend => '回复';

  @override
  String get home_lifeChatSending => '发送中...';

  @override
  String get home_lifeChatQuickReplies => '快速回复';

  @override
  String get home_lifeChatNavigate => '您也可以前往';

  @override
  String get home_navAction_use_screener => '使用筛查器';

  @override
  String get home_navAction_start_screening => '开始筛查';

  @override
  String get home_navAction_open_explorer => '打开项目浏览器';

  @override
  String get home_navAction_open_results => '打开结果';

  @override
  String get home_navAction_open_dashboard => '打开规划面板';

  @override
  String get home_lifeChatUserLabel => '您';

  @override
  String get home_lifeChatStatusEmpty => '告诉我您的情况以开始。';

  @override
  String get home_lifeChatStatusWaitingDetails => '请再多告诉我一些,以便我为您指明方向。';

  @override
  String get home_lifeChatStatusThinking => '正在思考您的更新...';

  @override
  String get home_lifeChatStatusReady => '我有一个简短的后续问题。';

  @override
  String get home_lifeChatStatusDone => '我已掌握足够信息以继续。';

  @override
  String get home_lifeNoCategories => '尚未推断出福利领域。';

  @override
  String get home_lifeNoFacts => '尚未捕获结构化事实。';

  @override
  String get home_lifeNoMissing => '目前没有缺失的关键后续问题。';

  @override
  String get home_lifeApplyDone => '助手建议已复制到筛查器控件。';

  @override
  String get home_lifeStarted => '已根据助手的建议开始筛查。';

  @override
  String get home_lifeDescriptionRequired => '告诉我您的情况以便我提供帮助。';

  @override
  String get home_lifeAnalyzing => '正在分析您的情况...';

  @override
  String get home_lifeAnalyzed => '生活事件输入已更新。';

  @override
  String home_lifeInterpretError(String error) {
    return '无法分析输入:$error';
  }

  @override
  String get home_lifeProbeUpdated => '已添加后续详细信息。';

  @override
  String home_lifeProbeError(String error) {
    return '无法处理该后续问题:$error';
  }

  @override
  String get results_title => '结果';

  @override
  String results_liveMatches(String count) {
    return '$count 个实时匹配';
  }

  @override
  String get results_print => '打印';

  @override
  String get results_redoScreening => '重新筛查';

  @override
  String get results_downloadPdf => '下载 PDF';

  @override
  String get results_scrollUp => '向上滚动';

  @override
  String get results_scrollDown => '向下滚动';

  @override
  String get results_generatingPdf => '生成中...';

  @override
  String get results_noSession => '没有活跃会话。请先 <a href=\"/\">开始筛查</a>。';

  @override
  String get results_federalTitle => '联邦结果';

  @override
  String get results_stateTitle => '州结果';

  @override
  String get results_noFederal => '暂无联邦结果。请回答更多问题以提高匹配度。';

  @override
  String get results_noState => '暂无州结果。请回答更多问题以提高匹配度。';

  @override
  String get results_federalOnlyFinished => '这是仅联邦的会话,因此不显示州结果。';

  @override
  String get results_federalOnlyHidden => '选择“仅联邦”范围时州结果被隐藏。';

  @override
  String results_loadError(String error) {
    return '无法加载结果:$error';
  }

  @override
  String get dashboard_title => '规划面板';

  @override
  String get dashboard_noSession => '没有活跃会话';

  @override
  String get dashboard_empty => '暂无活跃会话。开始一个会话以解锁规划摘要、行动步骤和缺失事实分析。';

  @override
  String get dashboard_goHome => '前往首页开始会话';

  @override
  String get dashboard_downloadPdf => '下载 PDF';

  @override
  String get dashboard_generatingPdf => '生成中...';

  @override
  String get dashboard_benefitStack => '福利组合';

  @override
  String get dashboard_missingFacts => '首要缺失事实';

  @override
  String get dashboard_actions => '建议的下一步行动';

  @override
  String get dashboard_sourceHub => '官方来源中心';

  @override
  String get dashboard_docChecklist => '文件清单';

  @override
  String get dashboard_planningNotes => '规划笔记';

  @override
  String get dashboard_likelyPrograms => '可能符合的项目';

  @override
  String get dashboard_possiblePrograms => '或许符合的项目';

  @override
  String get dashboard_answeredQuestions => '已回答问题';

  @override
  String get dashboard_avgRuleCoverage => '平均规则覆盖率';

  @override
  String get dashboard_estMonthly => '预计每月福利';

  @override
  String get dashboard_noBenefitStack => '尚无福利组合。';

  @override
  String get dashboard_noMissingFacts => '目前没有缺失事实热点。';

  @override
  String get dashboard_noActions => '尚无行动步骤。';

  @override
  String get dashboard_noSourceHub => '尚无官方来源中心。';

  @override
  String get dashboard_noDocuments => '尚无所需文件。完成筛查以查看所需材料。';

  @override
  String get dashboard_noPlanningNotes => '结果出来后会显示规划笔记。';

  @override
  String dashboard_loadError(String error) {
    return '无法加载计划:$error';
  }

  @override
  String get dashboard_noSessionLink => '没有活跃会话。请先 <a href=\"/\">开始筛查</a>。';

  @override
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  ) {
    return '广度 $breadthLabel($breadthPercent%) · 深度 $depthLabel($depthPercent%)';
  }

  @override
  String get dashboard_likely => '可能';

  @override
  String get dashboard_possible => '或许';

  @override
  String get dashboard_noTopPrograms => '尚无顶级项目。';

  @override
  String dashboard_confidence(String value) {
    return '置信度 $value/100';
  }

  @override
  String dashboard_affects(String count) {
    return '影响 $count 个项目匹配。';
  }

  @override
  String dashboard_neededFor(String programs) {
    return '用于:$programs';
  }

  @override
  String get whatif_title => '假设实验室';

  @override
  String get whatif_pill => '场景对比';

  @override
  String get whatif_noSession => '没有活跃会话。请先 <a href=\"/\">开始筛查</a>。';

  @override
  String get whatif_quickStartIntro => '没有活跃会话。在此开始一个会话以运行场景:';

  @override
  String get whatif_scopeLabel => '范围';

  @override
  String get whatif_stateLabel => '州';

  @override
  String get whatif_categoriesLabel => '福利类别';

  @override
  String get whatif_startSession => '开始会话';

  @override
  String get whatif_description =>
      '在不更改已保存答案的情况下运行场景对比。这些预设展示当某个生活事实发生变化时结果集会如何变化。';

  @override
  String get whatif_startThenRun => '请先开始一个会话,然后再运行场景。';

  @override
  String get whatif_noResult => '未返回场景结果。';

  @override
  String get whatif_scenarioCompare => '场景对比';

  @override
  String get whatif_likelyDelta => '可能差额';

  @override
  String get whatif_possibleDelta => '或许差额';

  @override
  String get whatif_federalDelta => '联邦差额';

  @override
  String get whatif_stateDelta => '州差额';

  @override
  String get whatif_newPrograms => '新增或解锁的项目';

  @override
  String get whatif_improvedPrograms => '改善的项目';

  @override
  String get whatif_noNewMatches => '此场景中没有新的正向匹配。';

  @override
  String get whatif_noImprovements => '此场景中没有状态改善。';

  @override
  String get whatif_toStatus => '至';

  @override
  String get whatif_startFirst => '运行场景前请先开始一个会话。';

  @override
  String get whatif_updated => '场景对比已更新。';

  @override
  String whatif_failed(String error) {
    return '场景对比失败:$error';
  }

  @override
  String get explorer_title => '项目浏览器';

  @override
  String get explorer_refresh => '刷新浏览器';

  @override
  String get explorer_description =>
      '混合浏览器结合通俗易懂的需求描述与官方目录。配置时可使用 Gemini 进行解读,并始终回退到本地有据可查的匹配。';

  @override
  String get explorer_scope => '范围';

  @override
  String get explorer_state => '州';

  @override
  String get explorer_describe => '描述您的需求';

  @override
  String get explorer_describePlaceholder =>
      '示例:我在加利福尼亚失去了一位家人,需要丧葬费用和遗属福利方面的帮助。';

  @override
  String get explorer_search => '精确关键词搜索';

  @override
  String get explorer_placeholder => '试试退休、残障、丧葬、退伍军人...';

  @override
  String get explorer_submit => '运行混合搜索';

  @override
  String get explorer_empty => '使用浏览器查阅当前的官方项目目录。';

  @override
  String get explorer_noMatch => '没有项目匹配此搜索。请尝试更宽泛的描述或移除筛选条件。';

  @override
  String get explorer_minChars => '精确关键词搜索至少需要 2 个字符。';

  @override
  String get explorer_openOfficial => '打开官方政府页面';

  @override
  String explorer_failed(String error) {
    return '浏览器失败:$error';
  }

  @override
  String get explorer_methodGemini => 'Gemini + 有据可查目录';

  @override
  String get explorer_methodHeuristic => '有据可查目录 + 本地解读';

  @override
  String get explorer_interpretationTitle => '搜索解读';

  @override
  String get explorer_needAreas => '需求领域';

  @override
  String get explorer_stateLabel => '州:';

  @override
  String get explorer_searchTerms => '搜索词:';

  @override
  String explorer_score(String score) {
    return '分数 $score';
  }

  @override
  String get explorer_browseSummary => '正在浏览官方项目目录。';

  @override
  String get explorer_localizedSummary => '显示您的需求如何根据本地有据可查的目录被解读。';

  @override
  String get card_confidence => '置信度';

  @override
  String get card_clickExpand => '(点击展开)';

  @override
  String get card_eligibilityCriteria => '资格标准';

  @override
  String get card_criteriaMet => '满足';

  @override
  String get card_met => '满足';

  @override
  String get card_notMet => '未满足';

  @override
  String get card_unanswered => '未回答';

  @override
  String get card_amount => '金额';

  @override
  String get card_amountEstimated => '(估算)';

  @override
  String get card_whyMatched => '匹配原因';

  @override
  String get card_noMatchedReasons => '尚无匹配原因。';

  @override
  String get card_missingFacts => '仍缺失什么';

  @override
  String get card_noMissingFacts => '本次没有缺失事实。';

  @override
  String get card_documentsNeeded => '所需文件';

  @override
  String get card_noDocuments => '此项目暂无文件清单。';

  @override
  String get card_dataGathered => '数据来自官方政府网站';

  @override
  String get card_noSources => '未附加官方政府来源。';

  @override
  String get card_howToGet => '如何获取此福利';

  @override
  String get card_noApplicationPath => '目前没有可用的官方申请路径。';

  @override
  String get card_openOfficial => '打开官方政府页面';

  @override
  String get card_useSourcesBelow => '使用下方的官方来源。';

  @override
  String get card_notAvailable => '不可用';

  @override
  String get card_unknownAgency => '未知机构';

  @override
  String get card_noSummary => '暂无摘要。';

  @override
  String get card_noBreakdown => '暂无明细。';

  @override
  String card_verified(String date) {
    return '$date 已验证';
  }

  @override
  String get category_children_families => '儿童与家庭';

  @override
  String get category_death => '死亡';

  @override
  String get category_disabilities => '残障';

  @override
  String get category_disasters => '灾害';

  @override
  String get category_education => '教育';

  @override
  String get category_food => '食物';

  @override
  String get category_general => '通用';

  @override
  String get category_health => '健康';

  @override
  String get category_housing_utilities => '住房与公用事业';

  @override
  String get category_jobs_unemployment => '就业与失业';

  @override
  String get category_military_veterans => '军人与退伍军人';

  @override
  String get category_retirement_seniors => '退休与老年人';

  @override
  String get category_welfare_cash_assistance => '福利与现金援助';

  @override
  String get breadth_focused => '聚焦保持筛查简短,集中关注最强的项目信号。';

  @override
  String get breadth_balanced => '均衡在停止前探索适量的可能项目。';

  @override
  String get breadth_broad => '广泛持续探索更长时间,以涵盖更多可能项目。';

  @override
  String get depth_light => '概要保持问题宽泛,通常是是/否或简单类别提示。';

  @override
  String get depth_standard => '标准混合宽泛筛查与一些更具体的后续问题。';

  @override
  String get depth_detailed => '详细在可用时询问准确金额、日期、时长及其他精确事实。';

  @override
  String get scenario_limitedIncome => '如果我的收入和资产有限';

  @override
  String get scenario_limitedIncomeDesc => '适用于现金援助或类 SSI 规划。';

  @override
  String get scenario_disability => '如果我有符合条件的残障';

  @override
  String get scenario_disabilityDesc => '测试与残障相关的路径和工作受限规则。';

  @override
  String get scenario_military => '如果我服现役军职';

  @override
  String get scenario_militaryDesc => '检查服役历史是否能开启退伍军人福利。';

  @override
  String get scenario_familyDeath => '如果近期有家人去世';

  @override
  String get scenario_familyDeathDesc => '探索遗属和丧葬援助路径。';

  @override
  String get status_likely_eligible => '可能符合';

  @override
  String get status_possibly_eligible => '或许符合';

  @override
  String get status_unclear => '不明确';

  @override
  String get status_likely_ineligible => '可能不符合';

  @override
  String get sensitivity_low => '低';

  @override
  String get sensitivity_medium => '中';

  @override
  String get sensitivity_high => '高';

  @override
  String get certainty_rule_coverage => '规则覆盖率';

  @override
  String get certainty_source_authority => '来源权威性';

  @override
  String get certainty_source_freshness => '来源时效性';

  @override
  String get certainty_program_determinism => '项目确定性';

  @override
  String get certainty_amount_determinism => '金额确定性';

  @override
  String get intake_scope_federal => '目前仅联邦';

  @override
  String get intake_scope_state => '州专属筛查';

  @override
  String get intake_scope_both => '联邦与州筛查';

  @override
  String get intake_fact_state_code => '已选州';

  @override
  String get intake_fact_applicant_income => '收入和资产有限';

  @override
  String get intake_fact_applicant_disability => '残障或符合条件的疾病';

  @override
  String get intake_fact_applicant_ability_to_work => '一年或更长时间无法工作';

  @override
  String get intake_fact_applicant_served_in_active_military => '服现役军职';

  @override
  String get intake_fact_applicant_service_disability => '与服役相关的残障';

  @override
  String get intake_fact_applicant_dolo => '近期家人去世';

  @override
  String get intake_fact_deceased_died_of_COVID => '因 COVID 相关原因去世';

  @override
  String get intake_fact_deceased_death_location_is_US => '死亡发生在美国';

  @override
  String get intake_fact_applicant_paid_into_SS =>
      '工作并缴纳社会安全税(Social Security)';

  @override
  String get intake_fact_recent_job_loss => '近期失业或工时减少';

  @override
  String get intake_fact_housing_urgency => '紧迫的住房或公用事业压力';

  @override
  String get intake_fact_food_insecurity => '食物或购物困难';

  @override
  String get intake_fact_current_student => '目前在校或职业培训中';

  @override
  String get intake_fact_has_children => '家中有子女或受抚养人';

  @override
  String get intake_fact_is_62_or_older => '62 岁或以上';

  @override
  String get intake_fact_recent_disaster_impact => '近期受灾';

  @override
  String get intake_fact_needs_health_coverage => '需要健康保险或医疗帮助';

  @override
  String get intake_fact_annual_income_amount => '大致年收入';

  @override
  String get docType_required => '必需';

  @override
  String get docType_recommended => '推荐';

  @override
  String get reviewStatus_open => '待处理';

  @override
  String get reviewDiff_eligibility => '资格';

  @override
  String get reviewDiff_structural => '结构';

  @override
  String get reviewDiff_content => '内容';

  @override
  String get server_step_startState => '从州官方社会服务网站开始。';

  @override
  String get server_step_useStateTools => '使用州的官方福利工具或项目页面来选择您需要的福利。';

  @override
  String get server_step_followStateInstructions =>
      '按照州的官方说明准备文件、联系当地办公室或在线提交。';

  @override
  String get server_step_reviewEligibility => '查看用于此匹配的官方政府资格来源。';

  @override
  String get server_step_openOfficial => '打开官方政府页面以开始或继续申请。';

  @override
  String get server_step_useSamePage => '在同一官方页面查询所需文件、状态或机构联系方式。';

  @override
  String server_note_strongMatches(String plural, String count) {
    return '您已经有 $count 个强匹配$plural可在政府官方网站上跟进。';
  }

  @override
  String server_note_possibleMatches(String plural, String count) {
    return '您有 $count 个可能的匹配$plural;多回答几个问题应该能更精准。';
  }

  @override
  String server_note_biggestGap(String label) {
    return '目前最大的信息缺口是:$label。';
  }

  @override
  String get server_note_chooseState => '选择一个州以解锁官方州福利路径。';

  @override
  String get admin_invalidKey => '已保存的管理员密钥被拒绝。请更新后重试。';

  @override
  String get admin_requiredKey => '需要管理员密钥。请在“管理员访问”字段中输入以使用审核和同步操作。';

  @override
  String errors_requestFailed(String status) {
    return '请求失败,状态:$status。';
  }

  @override
  String get errors_genericTitle => '出错了';

  @override
  String get errors_generic => '出错了。请再试一次。';

  @override
  String get errors_validation => '无法处理该请求,请刷新后重试。';

  @override
  String get errors_rateLimited => '请求过多。请等待一分钟后再试。';

  @override
  String get errors_server => '我们的服务遇到问题。请稍后再试。';

  @override
  String get errors_network => '无法连接服务器。请检查您的网络。';

  @override
  String get errors_timeout => '请求超时。请再试一次。';

  @override
  String get errors_auth => '您需要登录后才能执行此操作。';

  @override
  String get errors_notFound => '找不到您要查找的内容。';

  @override
  String get errors_tryAgain => '重试';

  @override
  String results_federalSection(int count) {
    return '联邦项目($count)';
  }

  @override
  String results_stateSection(int count) {
    return '州项目($count)';
  }

  @override
  String get results_emptyFederal => '没有匹配的联邦项目。请回答更多问题或扩大筛查范围。';

  @override
  String get results_emptyState => '暂无匹配的州项目。请在筛查中添加您的州以查看本地项目。';

  @override
  String get results_viewActionPlan => '查看行动计划';

  @override
  String get results_couldNotLoad => '无法加载您的结果。';

  @override
  String get dashboard_couldNotLoad => '无法加载您的行动计划。';

  @override
  String get dashboard_applyLinkUnavailable => '申请链接不可用,请联系当地机构。';

  @override
  String get dashboard_apply => '申请';

  @override
  String dashboard_step(int n) {
    return '第 $n 步';
  }

  @override
  String get dashboard_emptyStack => '我们尚未为您准备福利组合。完成筛查以填充。';

  @override
  String get dashboard_emptyActions => '尚无下一步行动,请回答更多问题以获得定制计划。';

  @override
  String get dashboard_emptyDocuments => '暂无需要准备的文件。';

  @override
  String get dashboard_emptyNotes => '您的情况暂无附加备注。';

  @override
  String get dashboard_emptySources => '暂无来源链接。';

  @override
  String get dashboard_helpNarrowDown => '帮我们缩小范围';

  @override
  String get dashboard_missingFactsHint => '回答这些可解锁更准确的匹配。';

  @override
  String get dashboard_resumeScreening => '继续筛查';

  @override
  String get dashboard_documentsTitle => '需要准备的文件';

  @override
  String get dashboard_notesTitle => '规划笔记';

  @override
  String get dashboard_sourceHubTitle => '官方来源中心';

  @override
  String get dashboard_stackTitle => '您的福利组合';

  @override
  String get dashboard_actionsTitle => '下一步行动';

  @override
  String get status_likelyEligible => '可能符合';

  @override
  String get status_possiblyEligible => '或许符合';

  @override
  String get status_likelyIneligible => '可能不符合';

  @override
  String get dynamic_question_dob => '您的出生日期是?';

  @override
  String get dynamic_hint_dobExample => '例如:1990-01-20';

  @override
  String get dynamic_question_paidIntoSS =>
      '您是否曾工作并缴纳过美国社会安全税(Social Security)?';

  @override
  String get dynamic_question_limitedIncome => '您的收入和资产是否有限?';

  @override
  String get dynamic_hint_limitedIncome => '这是宽泛的筛查问题,不是最终判定。';

  @override
  String get dynamic_question_disability => '您是否患有残障或符合条件的疾病?';

  @override
  String get dynamic_question_unableToWork => '由于残障,您是否一年或更长时间无法工作?';

  @override
  String get dynamic_question_activeMilitary => '您是否曾服役于现役军、海或空军?';

  @override
  String get dynamic_question_serviceDisabilityDetailed => '您的残障是否由现役军务造成或加重?';

  @override
  String get dynamic_question_familyDeathDetailed => '您近期是否经历了直系家庭成员的去世?';

  @override
  String get dynamic_question_dateOfDeath => '去世日期是?';

  @override
  String get dynamic_hint_dateOfDeath => '如果您不知道确切日期,请输入大致日期。';

  @override
  String get dynamic_question_covidDeath => '去世是否与 COVID-19 相关?';

  @override
  String get dynamic_question_deathInUs => '去世是否发生在美国?';

  @override
  String get dynamic_hint_deathInUs => '包括波多黎各和美国领土。';

  @override
  String get dynamic_question_householdIncome => '您的家庭年收入大约是多少?';

  @override
  String get dynamic_hint_householdIncome =>
      '参考:2024 年单人家庭联邦贫困线为 \$15,060/年。许多项目使用该阈值的 130–200%。';

  @override
  String get dynamic_question_disabilityType => '您的残障或健康状况属于哪种类型?';

  @override
  String get dynamic_hint_disabilityType =>
      '可多选。根据 SSA 规则,符合条件的残障必须显著限制您从事基本工作活动的能力。';

  @override
  String get dynamic_question_monthsUnableToWork => '您的状况已让您多少个月无法工作?';

  @override
  String get dynamic_hint_monthsUnableToWork =>
      'SSDI 要求连续至少 12 个月无法从事实质性有酬活动(42 U.S.C. § 423(d)(1)(A))。';

  @override
  String get dynamic_question_approxAge => '您的大致年龄是?';

  @override
  String get dynamic_hint_approxAge => '粗略年龄足够进行快速检查。';

  @override
  String get dynamic_question_exactDob => '您准确的出生日期是?';

  @override
  String get dynamic_hint_exactDob =>
      '完全退休年龄因人而异:1943–1954 年出生为 66 岁,1960 年及以后出生递增到 67 岁(42 U.S.C. § 416(l))。';

  @override
  String get dynamic_question_militaryVeteran => '您是退伍军人吗?';

  @override
  String get dynamic_hint_activeMilitary =>
      'VA 福利要求现役服役。在联邦命令下被激活的预备役/国民警卫队服役也可能符合(38 U.S.C. § 101(2))。';

  @override
  String get dynamic_question_serviceDisabilitySimple => '您的残障是否与军务有关?';

  @override
  String get dynamic_hint_serviceDisabilityDetailed =>
      'VA 残障补偿要求与服役相关的状况且残障评定至少 10%(38 U.S.C. § 1110)。';

  @override
  String get dynamic_question_familyDeathSimple => '您是否近期失去了一位家人?';

  @override
  String get dynamic_hint_familyDeathDetailed =>
      '遗属福利的资格取决于您与逝者的关系及其工作记录(42 U.S.C. § 402)。';

  @override
  String get dynamic_question_stateCode => '您希望针对哪个州或领土获取州福利?';

  @override
  String get dynamic_hint_stateCode => '州福利因州而异,与联邦匹配分开。';

  @override
  String get dynamic_option_yes => '是';

  @override
  String get dynamic_option_no => '否';

  @override
  String get dynamic_option_physicalDisability => '身体残障';

  @override
  String get dynamic_option_cognitiveDisability => '认知或智力残障';

  @override
  String get dynamic_option_sensoryDisability => '感官残障(视力/听力)';

  @override
  String get dynamic_option_mentalHealth => '心理健康状况';

  @override
  String get dynamic_option_chronicIllness => '慢性疾病';

  @override
  String get dynamic_option_noneOfTheAbove => '以上均无';

  @override
  String get dynamic_summary_retirement => '面向曾工作并缴纳社会安全税人士的每月退休收入。';

  @override
  String get dynamic_summary_ssdi => '面向缴纳社会安全税且因残障无法工作的人士的每月伤残福利(SSDI)。';

  @override
  String get dynamic_summary_ssi => '面向收入和资产有限的老年人和残障人士的每月补充保障收入(SSI)。';

  @override
  String get dynamic_summary_vaDisability =>
      '面向因现役军务造成或加重残障的退伍军人的免税月支付(VA Disability)。';

  @override
  String get dynamic_summary_survivor =>
      '工作者去世后面向符合条件家庭成员的每月社会安全(Social Security)支付。';

  @override
  String get dynamic_summary_funeral => '为在美国因 COVID-19 去世者的丧葬费用提供财政帮助(FEMA)。';

  @override
  String get dynamic_reason_paidIntoSS => '您工作过并缴纳了社会安全税。';

  @override
  String get dynamic_reason_retirementAge => '您至少已达到退休年龄。';

  @override
  String get dynamic_reason_limitedIncome => '您的收入和资产有限。';

  @override
  String get dynamic_reason_disability => '您患有残障或符合条件的疾病。';

  @override
  String get dynamic_reason_unableToWork => '由于残障,您一年或更长时间无法工作。';

  @override
  String get dynamic_reason_activeMilitary => '您服现役军职。';

  @override
  String get dynamic_reason_serviceDisability => '您的残障由现役军务造成或加重。';

  @override
  String get dynamic_reason_familyDeath => '您近期经历了家人去世。';

  @override
  String get dynamic_reason_covidDeath => '逝者的死亡与 COVID-19 相关。';

  @override
  String get dynamic_reason_diedInUs => '逝者在美国去世。';

  @override
  String get dynamic_reason_afterDate => '逝者于 2020 年 5 月 20 日之后去世。';

  @override
  String get dynamic_amount_ssi => '个人最高 \$943/月,夫妇最高 \$1,415/月(2024 年标准)。';

  @override
  String get dynamic_amount_retirement => '月度金额取决于工作记录和申领年龄。';

  @override
  String get dynamic_amount_ssdi => '月度金额取决于工作记录。';

  @override
  String get dynamic_amount_vaDisability => '金额取决于残障评定和受抚养人。';

  @override
  String get dynamic_amount_survivor => '月度金额取决于工作者的记录和您与其的关系。';

  @override
  String get dynamic_amount_funeral => '报销金额取决于符合条件的丧葬费用。';

  @override
  String get dynamic_document_ssnCard => '社会安全卡或号码(SSN)';

  @override
  String get dynamic_document_ssnCardDesc => '您的 9 位 SSN';

  @override
  String get dynamic_document_proofOfAge => '年龄证明';

  @override
  String get dynamic_document_proofOfAgeDesc => '出生证或护照';

  @override
  String get dynamic_document_w2 => 'W-2 表格或自雇税表';

  @override
  String get dynamic_document_w2RecentDesc => '最近一年的收入记录';

  @override
  String get dynamic_document_w2CurrentPriorDesc => '本年度和前一年度的收入记录';

  @override
  String get dynamic_document_bankInfo => '银行账户信息';

  @override
  String get dynamic_document_bankInfoDesc => '用于福利的直接存款';

  @override
  String get dynamic_document_medicalRecords => '医疗记录';

  @override
  String get dynamic_document_medicalRecordsDesc => '来自医生、医院或诊所的残障证明文件';

  @override
  String get dynamic_document_incomeResources => '收入和资产证明';

  @override
  String get dynamic_document_incomeResourcesDesc => '工资单、银行对账单或福利核准函';

  @override
  String get dynamic_document_disabilityDocsDesc => '您的残障证明文件';

  @override
  String get dynamic_document_livingArrangement => '居住安排证明';

  @override
  String get dynamic_document_livingArrangementDesc => '租约、按揭对账单或房东信件';

  @override
  String get dynamic_document_citizenship => '公民身份或移民身份证明';

  @override
  String get dynamic_document_citizenshipDesc => '出生证、护照或移民文件';

  @override
  String get dynamic_document_dd214 => 'DD-214(退伍文件)';

  @override
  String get dynamic_document_dd214Desc => '现役解除或退伍证明';

  @override
  String get dynamic_document_serviceEvidenceDesc => '将您的残障与军务联系起来的证据';

  @override
  String get dynamic_document_vaForm => 'VA Form 21-526EZ';

  @override
  String get dynamic_document_vaFormDesc => '残障补偿申请';

  @override
  String get dynamic_document_deceasedSsn => '逝者的社会安全号码(SSN)';

  @override
  String get dynamic_document_deceasedSsnDesc => '工作者的 SSN';

  @override
  String get dynamic_document_deathCertificate => '死亡证明';

  @override
  String get dynamic_document_deathCertificateDesc => '经认证的死亡证明副本';

  @override
  String get dynamic_document_relationshipProof => '关系证明';

  @override
  String get dynamic_document_relationshipProofDesc => '结婚证、出生证或收养文件';

  @override
  String get dynamic_document_covidDeathCertificateDesc => '必须将死亡归因于 COVID-19';

  @override
  String get dynamic_document_funeralReceipts => '丧葬费用收据';

  @override
  String get dynamic_document_funeralReceiptsDesc => '来自殡仪服务商的明细收据或合同';

  @override
  String get dynamic_document_usResidency => '美国居住证明';

  @override
  String get dynamic_document_usResidencyDesc => '针对承担丧葬费用者';

  @override
  String get dynamic_document_femaAppNumber => 'FEMA 申请号';

  @override
  String get dynamic_document_femaAppNumberDesc => '如果您之前申请过其他 FEMA 援助';

  @override
  String get lang_en => 'English';

  @override
  String get lang_es => 'Español';

  @override
  String get brand_name => 'Benefits Digger';

  @override
  String get brand_tagline => '找到您可能符合资格的所有福利。基于官方来源。';

  @override
  String get nav_screen => '筛查';

  @override
  String get nav_chat => '助手';

  @override
  String get nav_programs => '项目';

  @override
  String get nav_skipToContent => '跳到主内容';

  @override
  String get nav_openMenu => '打开菜单';

  @override
  String get nav_closeMenu => '关闭菜单';

  @override
  String get theme_toggle => '切换主题';

  @override
  String get theme_light => '浅色';

  @override
  String get theme_dark => '深色';

  @override
  String get theme_system => '系统';

  @override
  String get language_switcher => '语言';

  @override
  String get landing_eyebrow => '自信地规划';

  @override
  String get landing_heroTitle => '查看您可能符合资格的每一项政府福利。';

  @override
  String get landing_heroLede =>
      'Benefits Digger 引导您完成简短对话,根据联邦和州项目筛查您的资格,并将每项匹配落实到官方来源。';

  @override
  String get landing_startScreening => '开始筛查';

  @override
  String get landing_startScreeningHint => '五分钟引导。私密。无需账户。';

  @override
  String get landing_askAssistant => '询问助手';

  @override
  String get landing_askAssistantHint => '用您自己的话描述您的情况。';

  @override
  String get landing_browsePrograms => '浏览项目';

  @override
  String get landing_browseProgramsHint => '搜索官方项目目录。';

  @override
  String get landing_howItWorksTitle => '运作方式';

  @override
  String get landing_howItWorksLede => '三个步骤,尊重您的时间和情况。';

  @override
  String get landing_step1Title => '告诉我们您的情况';

  @override
  String get landing_step1Body => '用一句话描述您的情况,或回答几个简短的是/否问题。我们会把您的故事转化为结构化的筛查。';

  @override
  String get landing_step2Title => '我们对照官方规则匹配';

  @override
  String get landing_step2Body => '每个项目都对照最新的联邦或州资格规则评分。当数据缺失时,我们会直言。';

  @override
  String get landing_step3Title => '带着计划离开';

  @override
  String get landing_step3Body => '获取下一步检查清单、所需文件以及指向官方申请页面的直接链接。';

  @override
  String get landing_trustTitle => '为何人们信任结果';

  @override
  String get landing_trustOfficial => '来自官方 .gov 文档';

  @override
  String get landing_trustOfficialBody => '每项匹配都基于已发布的机构规则,并链接回原始页面。';

  @override
  String get landing_trustPrivate => '默认私密';

  @override
  String get landing_trustPrivateBody => '您的答案保留在浏览器会话中。我们绝不出售、共享或要求您登录。';

  @override
  String get landing_trustExplainable => '可解释的置信度';

  @override
  String get landing_trustExplainableBody => '我们说明每个项目为何匹配、缺失什么以及筛查的置信度。';

  @override
  String get landing_comingSoon => '即将推出';

  @override
  String get landing_comingSoonBody => 'Benefits Digger 的此部分正在开发中。请稍后再来查看。';

  @override
  String get landing_notFoundTitle => '我们找不到该页面';

  @override
  String get landing_notFoundBody => '您要查找的页面已移动或不存在。';

  @override
  String get landing_notFoundCta => '返回首页';

  @override
  String get landing_errorTitle => '出错了';

  @override
  String get landing_errorBody => '加载此页面时发生意外错误。请重试,如果持续发生,团队已收到通知。';

  @override
  String get landing_errorRetry => '重试';

  @override
  String get landing_loading => '加载中...';

  @override
  String get footer_disclaimer =>
      'Benefits Digger 是独立的筛查工具。它与美国联邦政府或任何州机构没有关联,也未经其认可或运营。最终资格由运营该福利的机构确定。';

  @override
  String get footer_privacy => '隐私';

  @override
  String get footer_sources => '官方来源';

  @override
  String get footer_about => '关于';

  @override
  String footer_copyright(String year) {
    return '$year Benefits Digger';
  }

  @override
  String get helpBot_title => '关于本应用的帮助';

  @override
  String get helpBot_placeholder => '询问如何使用本应用…';

  @override
  String get helpBot_openLabel => '获取本应用的帮助';

  @override
  String get helpBot_emptyState => '询问功能用法、页面导航或理解某个筛查问题。(关于福利的问题请使用主聊天。)';

  @override
  String get helpBot_streaming => '思考中…';

  @override
  String get helpBot_error => '无法连接帮助助手。请稍后重试。';

  @override
  String get helpBot_close => '关闭帮助';
}
