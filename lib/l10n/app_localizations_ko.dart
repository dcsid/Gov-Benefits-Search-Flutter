// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get nav_home => '홈';

  @override
  String get nav_dashboard => '대시보드';

  @override
  String get nav_results => '결과';

  @override
  String get nav_whatif => '가정 실험실';

  @override
  String get nav_explorer => '프로그램 탐색기';

  @override
  String get page_homeTitle => 'Benefits Digger';

  @override
  String get page_dashboardTitle => '계획 대시보드 - Benefits Digger';

  @override
  String get page_resultsTitle => '결과 - Benefits Digger';

  @override
  String get page_whatifTitle => '가정 실험실 - Benefits Digger';

  @override
  String get page_explorerTitle => '프로그램 탐색기 - Benefits Digger';

  @override
  String get app_eyebrow => 'Benefits Digger';

  @override
  String get app_headline => '공식 정부 자료를 바탕으로 혜택을 계획·비교·신청하세요.';

  @override
  String get app_lede =>
      '혜택을 사전심사하고, 가정 시나리오를 비교하며, 공식 카탈로그를 둘러보고, 정부 출처에 근거한 명확한 행동 계획과 함께 마치세요.';

  @override
  String get home_startScreening => '심사 시작';

  @override
  String get home_trustPrivate => '데이터는 비공개이며 저장되지 않습니다.';

  @override
  String get home_trustSources => '데이터는 공식 정부 프로그램에서 직접 가져옵니다.';

  @override
  String get home_scope => '범위';

  @override
  String get home_scopeBoth => '연방과 주';

  @override
  String get home_scopeFederal => '연방만';

  @override
  String get home_scopeState => '주만';

  @override
  String get home_state => '주';

  @override
  String get home_chooseState => '주를 선택하세요';

  @override
  String get home_breadth => '폭';

  @override
  String get home_breadthFocused => '집중';

  @override
  String get home_breadthBalanced => '균형';

  @override
  String get home_breadthBroad => '광범위';

  @override
  String get home_depth => '깊이';

  @override
  String get home_depthLight => '개요';

  @override
  String get home_depthStandard => '표준';

  @override
  String get home_depthDetailed => '상세';

  @override
  String get home_categories => '혜택 카테고리';

  @override
  String get home_categoriesHint =>
      '자격이 될 수 있는 혜택과 신청 방법을 찾으려면 최소 한 개의 카테고리를 선택하세요.';

  @override
  String get home_selectAll => '모두 선택';

  @override
  String get home_clear => '지우기';

  @override
  String get home_apply => '선택 적용';

  @override
  String get home_reset => '초기화';

  @override
  String get home_refreshSources => '공식 출처 새로고침';

  @override
  String get home_questionFlow => '질문 흐름';

  @override
  String get home_questionEmpty => '심사를 시작하려면 세션을 시작하세요.';

  @override
  String get home_saveAnswer => '답변 저장';

  @override
  String get home_backQuestion => '이전 질문으로';

  @override
  String get home_showResults => '지금 결과 보기';

  @override
  String get home_reviewQueue => '검토 대기열';

  @override
  String get home_refreshQueue => '대기열 새로고침';

  @override
  String get home_noReviewTasks => '아직 검토할 작업이 없습니다.';

  @override
  String home_breadthApprox(String description, String count) {
    return '$description (~$count개 질문)';
  }

  @override
  String home_depthApprox(String description) {
    return '$description';
  }

  @override
  String get home_noMoreQuestions => '더 이상 대기 중인 질문이 없습니다. 결과가 준비되었습니다.';

  @override
  String get home_noProgramsFound =>
      '선택과 일치하는 혜택 프로그램을 찾지 못했습니다. 카테고리를 넓히거나 다른 주를 선택해 보세요.';

  @override
  String get home_selectCategory => '선택을 적용하기 전에 최소 한 개의 카테고리를 선택하세요.';

  @override
  String get home_chooseScope => '세션을 시작하기 전에 심사 범위를 선택하세요.';

  @override
  String get home_chooseStateMsg => '주별 또는 통합 심사를 시작하기 전에 주를 선택하세요.';

  @override
  String get home_chooseOne => '하나 선택';

  @override
  String get home_searching => '검색 중...';

  @override
  String get home_creatingSession => '세션 생성 중...';

  @override
  String get home_creatingSessionState => '세션을 생성하고 주 혜택을 불러오는 중...';

  @override
  String home_sessionLive(String sessionId) {
    return '세션 $sessionId이(가) 활성화되었습니다.';
  }

  @override
  String home_sessionError(String error) {
    return '세션을 시작할 수 없습니다: $error';
  }

  @override
  String get home_answerRequired => '계속하기 전에 답변을 선택하세요.';

  @override
  String get home_answerSaved => '답변이 저장되었습니다.';

  @override
  String home_answerError(String error) {
    return '답변을 저장할 수 없습니다: $error';
  }

  @override
  String get home_resultsRefreshed => '결과가 새로고침되었습니다.';

  @override
  String get home_refreshingOfficialSources => '공식 출처 새로고침 중...';

  @override
  String get home_officialSourcesRefreshed => '공식 출처가 새로고침되었습니다.';

  @override
  String home_syncSummary(String added, String crawled) {
    return '공식 출처가 새로고침되었습니다. $crawled개 프로그램 사이트를 크롤링하고 $added개의 정부 페이지 출처를 추가했습니다.';
  }

  @override
  String home_syncFailed(String error) {
    return '동기화 실패: $error';
  }

  @override
  String home_sensitivity(String level) {
    return '$level 민감도';
  }

  @override
  String get home_sourceLabel => '출처';

  @override
  String home_reviewTaskMeta(String score, String diffType) {
    return '$diffType · 중요도 $score';
  }

  @override
  String get home_adminKey => '관리자 액세스 키';

  @override
  String get home_adminPlaceholder => '관리자 보호가 활성화된 경우에만 필요';

  @override
  String get home_adminHelp =>
      '검토 대기열과 출처 새로고침 동작에만 사용됩니다. 지울 때까지 이 브라우저 탭에 저장됩니다.';

  @override
  String get home_saveKey => '키 저장';

  @override
  String get home_clearKey => '키 지우기';

  @override
  String get home_adminSaved => '이 브라우저 탭에 관리자 키가 저장되었습니다.';

  @override
  String get home_adminCleared => '관리자 키가 지워졌습니다.';

  @override
  String get home_lifeIntakePill => '생활 사건 입력';

  @override
  String get home_lifeIntakeTitle => '상황을 설명해 주세요';

  @override
  String get home_lifeIntakeLabel => '어려움을 자신의 말로 알려주세요';

  @override
  String get home_lifeIntakePlaceholder =>
      '예: 직장을 잃었고, 임대료가 밀려 있어요. 식료품과 의료 지원이 있는지 알아보고 있어요.';

  @override
  String get home_lifeIntakeHint =>
      '문제를 먼저 분류할 필요는 없습니다. 설명을 추천 카테고리, 가능한 사실, 가장 중요한 다음 질문으로 변환해 드립니다.';

  @override
  String get home_lifeIntakeAnalyze => '내 상황 분석';

  @override
  String get home_lifeIntakeClear => '입력 지우기';

  @override
  String get home_lifeSummaryTitle => '들은 내용';

  @override
  String get home_lifeSuggestedScope => '추천 범위';

  @override
  String get home_lifeSuggestedState => '추천 주';

  @override
  String get home_lifeCategoriesTitle => '추천 혜택 영역';

  @override
  String get home_lifeFactsTitle => '현재까지의 구조화된 사실';

  @override
  String get home_lifeMissingTitle => '추가로 물어볼 만한 점';

  @override
  String get home_lifeApply => '이 추천을 심사기에 사용';

  @override
  String get home_lifeStart => '채팅에서 심사 시작';

  @override
  String get home_lifeChatTitle => '혜택 도우미';

  @override
  String get home_lifeAssistantName => 'Zobo';

  @override
  String get home_lifeChatLauncherLabel => 'Zobo 도우미 열기';

  @override
  String get home_lifeChatClose => '도우미 최소화';

  @override
  String get home_lifeChatMinimize => '최소화';

  @override
  String get home_lifeChatHint => '상황을 알려주시면 한 번에 한 가지 짧은 후속 질문을 드릴게요.';

  @override
  String get home_lifeChatEmpty =>
      '지금 겪고 있는 일을 먼저 설명해 주세요. 혜택 영역과 다음 질문으로 정리해 드립니다.';

  @override
  String get home_lifeChatInputLabel => '도우미에게 답하기';

  @override
  String get home_lifeChatWelcome =>
      '안녕하세요. 저는 Zobo입니다. 상황을 조금 알려주시면 다음 단계를 정리해 드리겠습니다.';

  @override
  String get home_lifeChatWelcomeSession =>
      '안녕하세요. 저는 Zobo입니다. 이 세션을 검토하시는 동안 옆에 있을게요. 결과, 누락된 사실, 다음 단계 설명을 요청하세요.';

  @override
  String get home_lifeChatPlaceholder =>
      '예: 직장을 잃었고, 임대료가 밀려 있어요. 식료품 지원이 필요해요.';

  @override
  String get home_lifeChatPlaceholderYesNo => '여기서는 짧은 예/아니요면 충분합니다.';

  @override
  String get home_lifeChatPlaceholderState =>
      'CA, 캘리포니아, New York처럼 주 이름으로 답하세요.';

  @override
  String get home_lifeChatSend => '답변';

  @override
  String get home_lifeChatSending => '보내는 중...';

  @override
  String get home_lifeChatQuickReplies => '빠른 답변';

  @override
  String get home_lifeChatNavigate => '다음으로 이동할 수도 있어요';

  @override
  String get home_navAction_use_screener => '심사기 사용';

  @override
  String get home_navAction_start_screening => '심사 시작';

  @override
  String get home_navAction_open_explorer => '프로그램 탐색기 열기';

  @override
  String get home_navAction_open_results => '결과 열기';

  @override
  String get home_navAction_open_dashboard => '대시보드 열기';

  @override
  String get home_lifeChatUserLabel => '나';

  @override
  String get home_lifeChatStatusEmpty => '시작하려면 상황을 알려주세요.';

  @override
  String get home_lifeChatStatusWaitingDetails => '방향을 잡을 수 있도록 조금 더 알려주세요.';

  @override
  String get home_lifeChatStatusThinking => '업데이트 내용을 생각하는 중...';

  @override
  String get home_lifeChatStatusReady => '짧은 후속 질문 하나가 준비되었어요.';

  @override
  String get home_lifeChatStatusDone => '계속할 수 있을 만큼 충분히 알았어요.';

  @override
  String get home_lifeNoCategories => '아직 추론된 혜택 영역이 없습니다.';

  @override
  String get home_lifeNoFacts => '아직 구조화된 사실이 없습니다.';

  @override
  String get home_lifeNoMissing => '지금은 누락된 핵심 후속 질문이 없습니다.';

  @override
  String get home_lifeApplyDone => '도우미의 추천이 심사기 컨트롤에 적용되었습니다.';

  @override
  String get home_lifeStarted => '도우미의 추천으로 심사를 시작했습니다.';

  @override
  String get home_lifeDescriptionRequired => '도와드릴 수 있도록 상황을 알려주세요.';

  @override
  String get home_lifeAnalyzing => '상황을 분석하는 중...';

  @override
  String get home_lifeAnalyzed => '생활 사건 입력이 업데이트되었습니다.';

  @override
  String home_lifeInterpretError(String error) {
    return '입력을 분석할 수 없습니다: $error';
  }

  @override
  String get home_lifeProbeUpdated => '후속 정보가 추가되었습니다.';

  @override
  String home_lifeProbeError(String error) {
    return '해당 후속 질문을 처리할 수 없습니다: $error';
  }

  @override
  String get results_title => '결과';

  @override
  String results_liveMatches(String count) {
    return '$count개의 실시간 일치';
  }

  @override
  String get results_print => '인쇄';

  @override
  String get results_redoScreening => '다시 심사';

  @override
  String get results_downloadPdf => 'PDF 다운로드';

  @override
  String get results_scrollUp => '위로 스크롤';

  @override
  String get results_scrollDown => '아래로 스크롤';

  @override
  String get results_generatingPdf => '생성 중...';

  @override
  String get results_noSession =>
      '활성 세션이 없습니다. 먼저 <a href=\"/\">심사를 시작</a>하세요.';

  @override
  String get results_federalTitle => '연방 결과';

  @override
  String get results_stateTitle => '주 결과';

  @override
  String get results_noFederal => '아직 연방 결과가 없습니다. 더 많은 질문에 답하면 일치도가 향상됩니다.';

  @override
  String get results_noState => '아직 주 결과가 없습니다. 더 많은 질문에 답하면 일치도가 향상됩니다.';

  @override
  String get results_federalOnlyFinished => '연방만 진행하는 세션이므로 주 결과는 표시되지 않습니다.';

  @override
  String get results_federalOnlyHidden => '‘연방만’ 범위를 선택하면 주 결과가 숨겨집니다.';

  @override
  String results_loadError(String error) {
    return '결과를 불러올 수 없습니다: $error';
  }

  @override
  String get dashboard_title => '계획 대시보드';

  @override
  String get dashboard_noSession => '활성 세션 없음';

  @override
  String get dashboard_empty =>
      '활성 세션이 없습니다. 세션을 시작하면 계획 요약, 행동 단계, 누락 사실 분석이 활성화됩니다.';

  @override
  String get dashboard_goHome => '세션을 시작하려면 홈으로 이동';

  @override
  String get dashboard_downloadPdf => 'PDF 다운로드';

  @override
  String get dashboard_generatingPdf => '생성 중...';

  @override
  String get dashboard_benefitStack => '혜택 묶음';

  @override
  String get dashboard_missingFacts => '주요 누락 사실';

  @override
  String get dashboard_actions => '추천 다음 행동';

  @override
  String get dashboard_sourceHub => '공식 출처 허브';

  @override
  String get dashboard_docChecklist => '문서 체크리스트';

  @override
  String get dashboard_planningNotes => '계획 메모';

  @override
  String get dashboard_likelyPrograms => '가능성 높은 프로그램';

  @override
  String get dashboard_possiblePrograms => '가능성 있는 프로그램';

  @override
  String get dashboard_answeredQuestions => '답변한 질문';

  @override
  String get dashboard_avgRuleCoverage => '평균 규칙 커버리지';

  @override
  String get dashboard_estMonthly => '예상 월 혜택';

  @override
  String get dashboard_noBenefitStack => '아직 혜택 묶음이 없습니다.';

  @override
  String get dashboard_noMissingFacts => '현재 누락 사실 핫스팟이 없습니다.';

  @override
  String get dashboard_noActions => '아직 행동 단계가 없습니다.';

  @override
  String get dashboard_noSourceHub => '아직 공식 출처 허브가 없습니다.';

  @override
  String get dashboard_noDocuments => '아직 필요한 문서가 없습니다. 심사를 마치면 필요한 항목이 표시됩니다.';

  @override
  String get dashboard_noPlanningNotes => '결과가 나오면 계획 메모가 표시됩니다.';

  @override
  String dashboard_loadError(String error) {
    return '계획을 불러올 수 없습니다: $error';
  }

  @override
  String get dashboard_noSessionLink =>
      '활성 세션이 없습니다. 먼저 <a href=\"/\">심사를 시작</a>하세요.';

  @override
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  ) {
    return '폭 $breadthLabel ($breadthPercent%) · 깊이 $depthLabel ($depthPercent%)';
  }

  @override
  String get dashboard_likely => '가능성 높음';

  @override
  String get dashboard_possible => '가능성 있음';

  @override
  String get dashboard_noTopPrograms => '아직 상위 프로그램이 없습니다.';

  @override
  String dashboard_confidence(String value) {
    return '신뢰도 $value/100';
  }

  @override
  String dashboard_affects(String count) {
    return '$count개 프로그램 일치에 영향.';
  }

  @override
  String dashboard_neededFor(String programs) {
    return '필요 대상: $programs';
  }

  @override
  String get whatif_title => '가정 실험실';

  @override
  String get whatif_pill => '시나리오 비교';

  @override
  String get whatif_noSession => '활성 세션이 없습니다. 먼저 <a href=\"/\">심사를 시작</a>하세요.';

  @override
  String get whatif_quickStartIntro =>
      '활성 세션이 없습니다. 시나리오를 실행하려면 여기서 세션을 시작하세요:';

  @override
  String get whatif_scopeLabel => '범위';

  @override
  String get whatif_stateLabel => '주';

  @override
  String get whatif_categoriesLabel => '혜택 카테고리';

  @override
  String get whatif_startSession => '세션 시작';

  @override
  String get whatif_description =>
      '저장된 답변을 바꾸지 않고 시나리오 비교를 실행하세요. 사전 설정은 생활 사실이 변할 때 결과 집합이 어떻게 바뀌는지 보여줍니다.';

  @override
  String get whatif_startThenRun => '세션을 시작한 다음 시나리오를 실행하세요.';

  @override
  String get whatif_noResult => '시나리오 결과가 반환되지 않았습니다.';

  @override
  String get whatif_scenarioCompare => '시나리오 비교';

  @override
  String get whatif_likelyDelta => '가능성 차이';

  @override
  String get whatif_possibleDelta => '가능 차이';

  @override
  String get whatif_federalDelta => '연방 차이';

  @override
  String get whatif_stateDelta => '주 차이';

  @override
  String get whatif_newPrograms => '새로 개방된 프로그램';

  @override
  String get whatif_improvedPrograms => '개선된 프로그램';

  @override
  String get whatif_noNewMatches => '이 시나리오에는 새로운 긍정 일치가 없습니다.';

  @override
  String get whatif_noImprovements => '이 시나리오에는 상태 개선이 없습니다.';

  @override
  String get whatif_toStatus => '→';

  @override
  String get whatif_startFirst => '시나리오를 실행하기 전에 세션을 시작하세요.';

  @override
  String get whatif_updated => '시나리오 비교가 업데이트되었습니다.';

  @override
  String whatif_failed(String error) {
    return '시나리오 비교 실패: $error';
  }

  @override
  String get explorer_title => '프로그램 탐색기';

  @override
  String get explorer_refresh => '탐색기 새로고침';

  @override
  String get explorer_description =>
      '하이브리드 탐색기는 평이한 영어 필요 설명과 공식 카탈로그를 결합합니다. 구성된 경우 Gemini를 사용해 해석하며, 항상 로컬 근거 기반 매칭으로 폴백합니다.';

  @override
  String get explorer_scope => '범위';

  @override
  String get explorer_state => '주';

  @override
  String get explorer_describe => '필요한 것을 설명하세요';

  @override
  String get explorer_describePlaceholder =>
      '예: 캘리포니아에서 가족을 잃었고 장례 비용과 유족 혜택 도움이 필요합니다.';

  @override
  String get explorer_search => '정확한 키워드 검색';

  @override
  String get explorer_placeholder => '은퇴, 장애, 장례, 재향군인 등을 시도해 보세요...';

  @override
  String get explorer_submit => '하이브리드 검색 실행';

  @override
  String get explorer_empty => '탐색기를 사용하여 현재 공식 프로그램 카탈로그를 둘러보세요.';

  @override
  String get explorer_noMatch =>
      '이 검색에 일치하는 프로그램이 없습니다. 더 넓게 설명하거나 필터를 제거해 보세요.';

  @override
  String get explorer_minChars => '정확한 키워드 검색에는 최소 2자가 필요합니다.';

  @override
  String get explorer_openOfficial => '공식 정부 페이지 열기';

  @override
  String explorer_failed(String error) {
    return '탐색기 실패: $error';
  }

  @override
  String get explorer_methodGemini => 'Gemini + 근거 카탈로그';

  @override
  String get explorer_methodHeuristic => '근거 카탈로그 + 로컬 해석';

  @override
  String get explorer_interpretationTitle => '검색 해석';

  @override
  String get explorer_needAreas => '필요 영역';

  @override
  String get explorer_stateLabel => '주:';

  @override
  String get explorer_searchTerms => '검색어:';

  @override
  String explorer_score(String score) {
    return '점수 $score';
  }

  @override
  String get explorer_browseSummary => '공식 프로그램 카탈로그를 탐색 중입니다.';

  @override
  String get explorer_localizedSummary =>
      '로컬 근거 카탈로그에서 필요 사항이 어떻게 해석되었는지 표시합니다.';

  @override
  String get card_confidence => '신뢰도';

  @override
  String get card_clickExpand => '(클릭하여 확장)';

  @override
  String get card_eligibilityCriteria => '자격 기준';

  @override
  String get card_criteriaMet => '충족';

  @override
  String get card_met => '충족';

  @override
  String get card_notMet => '미충족';

  @override
  String get card_unanswered => '미답변';

  @override
  String get card_amount => '금액';

  @override
  String get card_amountEstimated => ' (추정)';

  @override
  String get card_whyMatched => '일치한 이유';

  @override
  String get card_noMatchedReasons => '아직 일치 사유가 없습니다.';

  @override
  String get card_missingFacts => '아직 누락된 정보';

  @override
  String get card_noMissingFacts => '이번 회차에는 누락 사실이 없습니다.';

  @override
  String get card_documentsNeeded => '필요한 문서';

  @override
  String get card_noDocuments => '이 프로그램의 문서 체크리스트가 없습니다.';

  @override
  String get card_dataGathered => '공식 정부 웹사이트에서 수집한 데이터';

  @override
  String get card_noSources => '첨부된 공식 정부 출처가 없습니다.';

  @override
  String get card_howToGet => '이 혜택을 받는 방법';

  @override
  String get card_noApplicationPath => '이 결과에 대한 공식 신청 경로가 아직 없습니다.';

  @override
  String get card_openOfficial => '공식 정부 페이지 열기';

  @override
  String get card_useSourcesBelow => '아래 공식 출처를 이용하세요.';

  @override
  String get card_notAvailable => '사용 불가';

  @override
  String get card_unknownAgency => '알 수 없는 기관';

  @override
  String get card_noSummary => '요약이 없습니다.';

  @override
  String get card_noBreakdown => '세부 내역이 없습니다.';

  @override
  String card_verified(String date) {
    return '$date에 확인됨';
  }

  @override
  String get category_children_families => '아동 및 가족';

  @override
  String get category_death => '사망';

  @override
  String get category_disabilities => '장애';

  @override
  String get category_disasters => '재해';

  @override
  String get category_education => '교육';

  @override
  String get category_food => '식품';

  @override
  String get category_general => '일반';

  @override
  String get category_health => '건강';

  @override
  String get category_housing_utilities => '주거 및 공공요금';

  @override
  String get category_jobs_unemployment => '일자리 및 실업';

  @override
  String get category_military_veterans => '군인 및 재향군인';

  @override
  String get category_retirement_seniors => '은퇴 및 노년';

  @override
  String get category_welfare_cash_assistance => '복지 및 현금 지원';

  @override
  String get breadth_focused => '‘집중’은 심사를 짧게 유지하고 가장 강한 프로그램 신호에 초점을 둡니다.';

  @override
  String get breadth_balanced => '‘균형’은 멈추기 전에 적당한 수의 가능 프로그램을 탐색합니다.';

  @override
  String get breadth_broad => '‘광범위’는 더 오래 탐색해 더 많은 가능 프로그램을 다룹니다.';

  @override
  String get depth_light => '‘개요’는 질문을 넓게 유지하며 보통 예/아니요 또는 단순 카테고리 질문입니다.';

  @override
  String get depth_standard => '‘표준’은 넓은 심사 질문과 약간의 구체적인 후속 질문을 섞습니다.';

  @override
  String get depth_detailed => '‘상세’는 가능할 때 정확한 금액, 날짜, 기간 등 정밀한 사실을 묻습니다.';

  @override
  String get scenario_limitedIncome => '수입과 자산이 제한적일 경우';

  @override
  String get scenario_limitedIncomeDesc => '현금 지원 또는 SSI 스타일 계획에 유용합니다.';

  @override
  String get scenario_disability => '자격이 되는 장애가 있을 경우';

  @override
  String get scenario_disabilityDesc => '장애 관련 경로와 근로 제한 규칙을 검토합니다.';

  @override
  String get scenario_military => '현역 군 복무가 있을 경우';

  @override
  String get scenario_militaryDesc => '복무 이력이 재향군인 혜택을 여는지 확인합니다.';

  @override
  String get scenario_familyDeath => '최근 가족 사망 사건이 있을 경우';

  @override
  String get scenario_familyDeathDesc => '유족 및 장례 지원 경로를 살펴봅니다.';

  @override
  String get status_likely_eligible => '자격 가능성 높음';

  @override
  String get status_possibly_eligible => '자격 가능성 있음';

  @override
  String get status_unclear => '불분명';

  @override
  String get status_likely_ineligible => '자격 가능성 낮음';

  @override
  String get sensitivity_low => '낮음';

  @override
  String get sensitivity_medium => '보통';

  @override
  String get sensitivity_high => '높음';

  @override
  String get certainty_rule_coverage => '규칙 커버리지';

  @override
  String get certainty_source_authority => '출처 권위';

  @override
  String get certainty_source_freshness => '출처 신선도';

  @override
  String get certainty_program_determinism => '프로그램 결정성';

  @override
  String get certainty_amount_determinism => '금액 결정성';

  @override
  String get intake_scope_federal => '현재 연방만';

  @override
  String get intake_scope_state => '주별 심사';

  @override
  String get intake_scope_both => '연방 및 주 심사';

  @override
  String get intake_fact_state_code => '선택한 주';

  @override
  String get intake_fact_applicant_income => '수입과 자산이 제한적';

  @override
  String get intake_fact_applicant_disability => '장애 또는 자격이 되는 질병';

  @override
  String get intake_fact_applicant_ability_to_work => '1년 이상 일할 수 없음';

  @override
  String get intake_fact_applicant_served_in_active_military => '현역 군 복무';

  @override
  String get intake_fact_applicant_service_disability => '복무 관련 장애';

  @override
  String get intake_fact_applicant_dolo => '최근 가족 사망';

  @override
  String get intake_fact_deceased_died_of_COVID => 'COVID 관련 사망';

  @override
  String get intake_fact_deceased_death_location_is_US => '미국에서 사망';

  @override
  String get intake_fact_applicant_paid_into_SS =>
      '근로하고 사회보장세(Social Security) 납부';

  @override
  String get intake_fact_recent_job_loss => '최근 실직 또는 근무시간 감소';

  @override
  String get intake_fact_housing_urgency => '주거 또는 공공요금 긴급 압박';

  @override
  String get intake_fact_food_insecurity => '식품 또는 식료품 어려움';

  @override
  String get intake_fact_current_student => '재학 중 또는 직업훈련 중';

  @override
  String get intake_fact_has_children => '가구 내 아동 또는 부양가족 있음';

  @override
  String get intake_fact_is_62_or_older => '62세 이상';

  @override
  String get intake_fact_recent_disaster_impact => '최근 재해 피해';

  @override
  String get intake_fact_needs_health_coverage => '건강보험 또는 의료 지원 필요';

  @override
  String get intake_fact_annual_income_amount => '연 소득 추정';

  @override
  String get docType_required => '필수';

  @override
  String get docType_recommended => '권장';

  @override
  String get reviewStatus_open => '미해결';

  @override
  String get reviewDiff_eligibility => '자격';

  @override
  String get reviewDiff_structural => '구조';

  @override
  String get reviewDiff_content => '내용';

  @override
  String get server_step_startState => '주의 공식 사회복지 사이트에서 시작하세요.';

  @override
  String get server_step_useStateTools =>
      '주의 공식 혜택 도구나 프로그램 페이지를 사용해 필요한 혜택을 선택하세요.';

  @override
  String get server_step_followStateInstructions =>
      '주의 공식 안내에 따라 문서, 지역 사무소 연락 또는 온라인 제출을 진행하세요.';

  @override
  String get server_step_reviewEligibility => '이 일치에 사용된 공식 정부 자격 출처를 검토하세요.';

  @override
  String get server_step_openOfficial => '공식 정부 페이지를 열어 신청을 시작하거나 계속하세요.';

  @override
  String get server_step_useSamePage =>
      '필수 문서, 상태 확인, 기관 연락은 동일한 공식 페이지를 사용하세요.';

  @override
  String server_note_strongMatches(String plural, String count) {
    return '공식 정부 사이트에서 추진할 강력한 일치가 이미 $count개$plural 있습니다.';
  }

  @override
  String server_note_possibleMatches(String plural, String count) {
    return '$count개$plural의 가능 일치가 있습니다. 몇 가지 더 답하면 정밀해집니다.';
  }

  @override
  String server_note_biggestGap(String label) {
    return '현재 가장 큰 정보 공백은: $label.';
  }

  @override
  String get server_note_chooseState => '주를 선택하면 공식 주 혜택 경로가 열립니다.';

  @override
  String get admin_invalidKey => '저장된 관리자 키가 거부되었습니다. 업데이트 후 다시 시도하세요.';

  @override
  String get admin_requiredKey =>
      '관리자 키가 필요합니다. 검토 및 동기화 동작을 사용하려면 ‘관리자 액세스’ 필드에 입력하세요.';

  @override
  String errors_requestFailed(String status) {
    return '요청이 상태 $status로 실패했습니다.';
  }

  @override
  String get errors_genericTitle => '문제가 발생했습니다';

  @override
  String get errors_generic => '문제가 발생했습니다. 다시 시도하세요.';

  @override
  String get errors_validation => '요청을 처리할 수 없습니다 — 새로고침 후 다시 시도하세요.';

  @override
  String get errors_rateLimited => '요청이 너무 많습니다. 1분 후 다시 시도하세요.';

  @override
  String get errors_server => '서비스에 문제가 있습니다. 나중에 다시 시도하세요.';

  @override
  String get errors_network => '서버에 연결할 수 없습니다. 연결을 확인하세요.';

  @override
  String get errors_timeout => '요청 시간이 초과되었습니다. 다시 시도하세요.';

  @override
  String get errors_auth => '이 작업을 하려면 로그인이 필요합니다.';

  @override
  String get errors_notFound => '찾으시는 항목을 찾을 수 없습니다.';

  @override
  String get errors_tryAgain => '다시 시도';

  @override
  String results_federalSection(int count) {
    return '연방 프로그램 ($count)';
  }

  @override
  String results_stateSection(int count) {
    return '주 프로그램 ($count)';
  }

  @override
  String get results_emptyFederal =>
      '일치하는 연방 프로그램이 없습니다. 더 많이 답하거나 심사를 넓혀 보세요.';

  @override
  String get results_emptyState =>
      '아직 일치하는 주 프로그램이 없습니다. 심사에서 주를 추가해 지역 프로그램을 보세요.';

  @override
  String get results_viewActionPlan => '행동 계획 보기';

  @override
  String get results_couldNotLoad => '결과를 불러올 수 없습니다.';

  @override
  String get dashboard_couldNotLoad => '행동 계획을 불러올 수 없습니다.';

  @override
  String get dashboard_applyLinkUnavailable =>
      '신청 링크를 사용할 수 없습니다 — 지역 기관에 문의하세요.';

  @override
  String get dashboard_apply => '신청';

  @override
  String dashboard_step(int n) {
    return '$n단계';
  }

  @override
  String get dashboard_emptyStack => '아직 혜택 묶음이 준비되지 않았습니다. 심사를 마치면 채워집니다.';

  @override
  String get dashboard_emptyActions =>
      '아직 다음 행동이 없습니다 — 몇 가지 더 답하면 맞춤 계획을 받을 수 있어요.';

  @override
  String get dashboard_emptyDocuments => '아직 모을 문서가 없습니다.';

  @override
  String get dashboard_emptyNotes => '현재 상황에 대한 추가 메모가 없습니다.';

  @override
  String get dashboard_emptySources => '사용 가능한 출처 링크가 없습니다.';

  @override
  String get dashboard_helpNarrowDown => '범위를 좁히는 데 도움 주세요';

  @override
  String get dashboard_missingFactsHint => '이 항목에 답하면 더 정확한 일치가 열립니다.';

  @override
  String get dashboard_resumeScreening => '심사 다시 진행';

  @override
  String get dashboard_documentsTitle => '준비할 문서';

  @override
  String get dashboard_notesTitle => '계획 메모';

  @override
  String get dashboard_sourceHubTitle => '공식 출처 허브';

  @override
  String get dashboard_stackTitle => '내 혜택 묶음';

  @override
  String get dashboard_actionsTitle => '다음 행동';

  @override
  String get status_likelyEligible => '자격 가능성 높음';

  @override
  String get status_possiblyEligible => '자격 가능성 있음';

  @override
  String get status_likelyIneligible => '아마 아님';

  @override
  String get dynamic_question_dob => '생년월일은 언제인가요?';

  @override
  String get dynamic_hint_dobExample => '예: 1990-01-20';

  @override
  String get dynamic_question_paidIntoSS =>
      '미국 사회보장세(Social Security)를 납부한 적이 있습니까?';

  @override
  String get dynamic_question_limitedIncome => '수입과 자산이 제한적입니까?';

  @override
  String get dynamic_hint_limitedIncome => '이는 폭넓은 사전심사 질문이며 최종 결정이 아닙니다.';

  @override
  String get dynamic_question_disability => '장애 또는 자격이 되는 질병이 있습니까?';

  @override
  String get dynamic_question_unableToWork => '장애로 인해 1년 이상 일할 수 없습니까?';

  @override
  String get dynamic_question_activeMilitary => '현역 육군, 해군 또는 공군에서 복무했습니까?';

  @override
  String get dynamic_question_serviceDisabilityDetailed =>
      '장애가 현역 군 복무로 인해 발생하거나 악화되었습니까?';

  @override
  String get dynamic_question_familyDeathDetailed => '최근에 직계 가족이 사망했습니까?';

  @override
  String get dynamic_question_dateOfDeath => '사망일은 언제입니까?';

  @override
  String get dynamic_hint_dateOfDeath => '정확한 날짜를 모르면 대략적인 날짜를 입력하세요.';

  @override
  String get dynamic_question_covidDeath => '사망이 COVID-19와 관련이 있었습니까?';

  @override
  String get dynamic_question_deathInUs => '미국에서 사망했습니까?';

  @override
  String get dynamic_hint_deathInUs => '푸에르토리코와 미국 영토 포함.';

  @override
  String get dynamic_question_householdIncome => '연 가구 소득은 대략 얼마입니까?';

  @override
  String get dynamic_hint_householdIncome =>
      '참고: 2024년 1인 가구 연방 빈곤선은 연 \$15,060입니다. 많은 프로그램이 이 기준의 130–200%를 사용합니다.';

  @override
  String get dynamic_question_disabilityType => '어떤 종류의 장애나 상태가 있습니까?';

  @override
  String get dynamic_hint_disabilityType =>
      '해당하는 모든 항목을 선택하세요. SSA 규정에 따라 자격이 되는 장애는 기본적인 업무 수행 능력을 크게 제한해야 합니다.';

  @override
  String get dynamic_question_monthsUnableToWork =>
      '이 상태로 인해 일할 수 없게 된 지 몇 개월 되었습니까?';

  @override
  String get dynamic_hint_monthsUnableToWork =>
      'SSDI는 최소 12개월 연속 실질적 유급 활동에 종사할 수 없을 것을 요구합니다(42 U.S.C. § 423(d)(1)(A)).';

  @override
  String get dynamic_question_approxAge => '대략 몇 세입니까?';

  @override
  String get dynamic_hint_approxAge => '빠른 점검에는 대략 나이로 충분합니다.';

  @override
  String get dynamic_question_exactDob => '정확한 생년월일은 언제입니까?';

  @override
  String get dynamic_hint_exactDob =>
      '완전 은퇴 연령은 다릅니다: 1943–1954년생은 66세, 1960년 이후 출생자는 67세까지 점진적으로 증가(42 U.S.C. § 416(l)).';

  @override
  String get dynamic_question_militaryVeteran => '재향군인입니까?';

  @override
  String get dynamic_hint_activeMilitary =>
      'VA 혜택은 현역 복무를 요구합니다. 연방 명령으로 활성화된 예비역/주방위군도 자격이 될 수 있습니다(38 U.S.C. § 101(2)).';

  @override
  String get dynamic_question_serviceDisabilitySimple => '장애가 군 복무와 관련이 있었습니까?';

  @override
  String get dynamic_hint_serviceDisabilityDetailed =>
      'VA 장애 보상은 최소 10% 장애 등급을 가진 복무 관련 상태를 요구합니다(38 U.S.C. § 1110).';

  @override
  String get dynamic_question_familyDeathSimple => '최근에 가족을 잃었습니까?';

  @override
  String get dynamic_hint_familyDeathDetailed =>
      '유족 혜택 자격은 사망자와의 관계 및 그들의 근로 이력에 따라 다릅니다(42 U.S.C. § 402).';

  @override
  String get dynamic_question_stateCode => '어느 주 또는 영토의 주 혜택을 원하십니까?';

  @override
  String get dynamic_hint_stateCode => '주 혜택은 주마다 다르며 연방 일치와 분리되어 있습니다.';

  @override
  String get dynamic_option_yes => '예';

  @override
  String get dynamic_option_no => '아니오';

  @override
  String get dynamic_option_physicalDisability => '신체 장애';

  @override
  String get dynamic_option_cognitiveDisability => '인지 또는 지적 장애';

  @override
  String get dynamic_option_sensoryDisability => '감각 장애 (시각/청각)';

  @override
  String get dynamic_option_mentalHealth => '정신건강 상태';

  @override
  String get dynamic_option_chronicIllness => '만성 질환';

  @override
  String get dynamic_option_noneOfTheAbove => '해당 없음';

  @override
  String get dynamic_summary_retirement => '근로하고 사회보장세를 납부한 분들을 위한 월 은퇴 소득.';

  @override
  String get dynamic_summary_ssdi =>
      '사회보장(Social Security)에 납부했고 장애로 일할 수 없는 분들을 위한 월 장애 혜택(SSDI).';

  @override
  String get dynamic_summary_ssi => '수입과 자산이 제한적인 노년층 및 장애인을 위한 월 보조소득(SSI).';

  @override
  String get dynamic_summary_vaDisability =>
      '현역 복무로 인해 장애가 발생했거나 악화된 재향군인을 위한 비과세 월 지급(VA Disability).';

  @override
  String get dynamic_summary_survivor =>
      '근로자가 사망한 후 자격이 있는 가족 구성원에게 지급되는 월 사회보장(Social Security) 지급.';

  @override
  String get dynamic_summary_funeral =>
      '미국에서 COVID-19로 사망한 사람의 장례·매장 비용을 위한 재정 지원(FEMA).';

  @override
  String get dynamic_reason_paidIntoSS => '근로하고 사회보장세를 납부했습니다.';

  @override
  String get dynamic_reason_retirementAge => '최소 은퇴 연령에 도달했습니다.';

  @override
  String get dynamic_reason_limitedIncome => '수입과 자산이 제한적입니다.';

  @override
  String get dynamic_reason_disability => '장애 또는 자격이 되는 질병이 있습니다.';

  @override
  String get dynamic_reason_unableToWork => '장애로 인해 1년 이상 일할 수 없습니다.';

  @override
  String get dynamic_reason_activeMilitary => '현역 복무를 했습니다.';

  @override
  String get dynamic_reason_serviceDisability => '장애가 현역 복무로 인해 발생했거나 악화되었습니다.';

  @override
  String get dynamic_reason_familyDeath => '최근 가족 사망을 경험했습니다.';

  @override
  String get dynamic_reason_covidDeath => '사망이 COVID-19와 관련이 있었습니다.';

  @override
  String get dynamic_reason_diedInUs => '사망자가 미국에서 사망했습니다.';

  @override
  String get dynamic_reason_afterDate => '사망자가 2020년 5월 20일 이후에 사망했습니다.';

  @override
  String get dynamic_amount_ssi => '개인 최대 월 \$943, 부부 월 \$1,415 (2024년 기준).';

  @override
  String get dynamic_amount_retirement => '월 금액은 근로 이력과 청구 연령에 따라 다릅니다.';

  @override
  String get dynamic_amount_ssdi => '월 금액은 근로 이력에 따라 다릅니다.';

  @override
  String get dynamic_amount_vaDisability => '금액은 장애 등급과 부양가족에 따라 다릅니다.';

  @override
  String get dynamic_amount_survivor => '월 금액은 근로자의 기록과 귀하의 관계에 따라 다릅니다.';

  @override
  String get dynamic_amount_funeral => '환급 금액은 자격이 되는 장례 비용에 따라 다릅니다.';

  @override
  String get dynamic_document_ssnCard => '사회보장 카드 또는 번호(SSN)';

  @override
  String get dynamic_document_ssnCardDesc => '9자리 SSN';

  @override
  String get dynamic_document_proofOfAge => '나이 증명';

  @override
  String get dynamic_document_proofOfAgeDesc => '출생증명서 또는 여권';

  @override
  String get dynamic_document_w2 => 'W-2 양식 또는 자영업 세금 신고서';

  @override
  String get dynamic_document_w2RecentDesc => '가장 최근 연도 소득 기록';

  @override
  String get dynamic_document_w2CurrentPriorDesc => '현재 연도 및 전년도 소득 기록';

  @override
  String get dynamic_document_bankInfo => '은행 계좌 정보';

  @override
  String get dynamic_document_bankInfoDesc => '혜택의 직접 입금용';

  @override
  String get dynamic_document_medicalRecords => '의료 기록';

  @override
  String get dynamic_document_medicalRecordsDesc => '의사, 병원 또는 클리닉의 장애 관련 문서';

  @override
  String get dynamic_document_incomeResources => '수입 및 자산 증빙';

  @override
  String get dynamic_document_incomeResourcesDesc =>
      '급여 명세서, 은행 거래내역 또는 혜택 통지서';

  @override
  String get dynamic_document_disabilityDocsDesc => '장애 증빙 문서';

  @override
  String get dynamic_document_livingArrangement => '거주 형태 증빙';

  @override
  String get dynamic_document_livingArrangementDesc =>
      '임대 계약, 모기지 명세 또는 임대인 서신';

  @override
  String get dynamic_document_citizenship => '시민권 또는 이민 신분 증빙';

  @override
  String get dynamic_document_citizenshipDesc => '출생증명서, 여권 또는 이민 서류';

  @override
  String get dynamic_document_dd214 => 'DD-214 (전역 서류)';

  @override
  String get dynamic_document_dd214Desc => '현역 해제 또는 전역 증명서';

  @override
  String get dynamic_document_serviceEvidenceDesc => '장애와 군 복무를 연결하는 증거';

  @override
  String get dynamic_document_vaForm => 'VA 양식 21-526EZ';

  @override
  String get dynamic_document_vaFormDesc => '장애 보상 신청서';

  @override
  String get dynamic_document_deceasedSsn => '사망자의 사회보장번호(SSN)';

  @override
  String get dynamic_document_deceasedSsnDesc => '근로자의 SSN';

  @override
  String get dynamic_document_deathCertificate => '사망확인서';

  @override
  String get dynamic_document_deathCertificateDesc => '공증된 사망확인서 사본';

  @override
  String get dynamic_document_relationshipProof => '관계 증빙';

  @override
  String get dynamic_document_relationshipProofDesc => '결혼증명서, 출생증명서 또는 입양 서류';

  @override
  String get dynamic_document_covidDeathCertificateDesc =>
      '사망 원인이 COVID-19로 명시되어야 함';

  @override
  String get dynamic_document_funeralReceipts => '장례 비용 영수증';

  @override
  String get dynamic_document_funeralReceiptsDesc => '장례 제공자의 항목별 영수증 또는 계약서';

  @override
  String get dynamic_document_usResidency => '미국 거주 증빙';

  @override
  String get dynamic_document_usResidencyDesc => '장례 비용을 부담한 사람용';

  @override
  String get dynamic_document_femaAppNumber => 'FEMA 신청 번호';

  @override
  String get dynamic_document_femaAppNumberDesc => '이전에 다른 FEMA 지원에 신청한 경우';

  @override
  String get lang_en => 'English';

  @override
  String get lang_es => 'Español';

  @override
  String get brand_name => 'Benefits Digger';

  @override
  String get brand_tagline => '자격이 될 수 있는 모든 혜택을 찾으세요. 공식 출처 기반.';

  @override
  String get nav_screen => '심사';

  @override
  String get nav_chat => '도우미';

  @override
  String get nav_programs => '프로그램';

  @override
  String get nav_skipToContent => '본문으로 건너뛰기';

  @override
  String get nav_openMenu => '메뉴 열기';

  @override
  String get nav_closeMenu => '메뉴 닫기';

  @override
  String get theme_toggle => '테마 전환';

  @override
  String get theme_light => '라이트';

  @override
  String get theme_dark => '다크';

  @override
  String get theme_system => '시스템';

  @override
  String get language_switcher => '언어';

  @override
  String get landing_eyebrow => '자신감 있게 계획하세요';

  @override
  String get landing_heroTitle => '자격이 될 수 있는 모든 정부 혜택을 확인하세요.';

  @override
  String get landing_heroLede =>
      'Benefits Digger는 짧은 대화를 안내하고, 연방 및 주 프로그램으로 심사하며, 모든 일치를 공식 출처에 근거시킵니다.';

  @override
  String get landing_startScreening => '심사 시작';

  @override
  String get landing_startScreeningHint => '5분 안내. 비공개. 계정 불필요.';

  @override
  String get landing_askAssistant => '도우미에게 질문';

  @override
  String get landing_askAssistantHint => '자신의 말로 상황을 설명하세요.';

  @override
  String get landing_browsePrograms => '프로그램 둘러보기';

  @override
  String get landing_browseProgramsHint => '공식 프로그램 카탈로그를 검색하세요.';

  @override
  String get landing_howItWorksTitle => '동작 방식';

  @override
  String get landing_howItWorksLede => '당신의 시간과 상황을 존중하는 세 단계.';

  @override
  String get landing_step1Title => '상황을 알려주세요';

  @override
  String get landing_step1Body =>
      '한 문장으로 상황을 입력하거나 짧은 예/아니요 질문에 답하세요. 이야기를 구조화된 심사로 변환합니다.';

  @override
  String get landing_step2Title => '공식 규칙으로 매칭합니다';

  @override
  String get landing_step2Body =>
      '각 프로그램은 최신 연방 또는 주 자격 규칙으로 채점됩니다. 데이터가 부족하면 솔직히 말씀드립니다.';

  @override
  String get landing_step3Title => '계획과 함께 마치세요';

  @override
  String get landing_step3Body =>
      '다음 단계 체크리스트, 필요한 문서, 공식 신청 페이지로의 직접 링크를 받으세요.';

  @override
  String get landing_trustTitle => '사용자가 결과를 신뢰하는 이유';

  @override
  String get landing_trustOfficial => '공식 .gov 문서에서 출처';

  @override
  String get landing_trustOfficialBody =>
      '모든 일치는 공개된 기관 규칙에 근거하며 원본 페이지로 다시 연결됩니다.';

  @override
  String get landing_trustPrivate => '기본적으로 비공개';

  @override
  String get landing_trustPrivateBody =>
      '답변은 브라우저 세션에 머무릅니다. 판매·공유·로그인 요구가 없습니다.';

  @override
  String get landing_trustExplainable => '설명 가능한 신뢰도';

  @override
  String get landing_trustExplainableBody =>
      '각 프로그램이 일치한 이유, 누락된 사실, 심사의 신뢰도를 보여줍니다.';

  @override
  String get landing_comingSoon => '곧 출시';

  @override
  String get landing_comingSoonBody =>
      'Benefits Digger의 이 부분은 현재 제작 중입니다. 잠시 후 다시 확인해 주세요.';

  @override
  String get landing_notFoundTitle => '해당 페이지를 찾을 수 없습니다';

  @override
  String get landing_notFoundBody => '찾으시는 페이지가 이동했거나 존재하지 않습니다.';

  @override
  String get landing_notFoundCta => '홈으로 돌아가기';

  @override
  String get landing_errorTitle => '문제가 발생했습니다';

  @override
  String get landing_errorBody =>
      '이 페이지를 불러오는 중 예기치 않은 오류가 발생했습니다. 다시 시도하세요. 계속되면 팀에 통지되었습니다.';

  @override
  String get landing_errorRetry => '다시 시도';

  @override
  String get landing_loading => '로딩 중...';

  @override
  String get footer_disclaimer =>
      'Benefits Digger는 독립적인 심사 도구입니다. 미국 연방정부 또는 어떤 주 기관과도 제휴, 추천, 운영 관계가 없습니다. 최종 자격은 해당 혜택을 운영하는 기관이 결정합니다.';

  @override
  String get footer_privacy => '개인정보';

  @override
  String get footer_sources => '공식 출처';

  @override
  String get footer_about => '소개';

  @override
  String footer_copyright(String year) {
    return '$year Benefits Digger';
  }

  @override
  String get helpBot_title => '이 앱에 대한 도움말';

  @override
  String get helpBot_placeholder => '이 앱 사용법을 물어보세요…';

  @override
  String get helpBot_openLabel => '이 앱에 대한 도움 받기';

  @override
  String get helpBot_emptyState =>
      '기능 사용법, 페이지 이동 방법 또는 심사 질문 이해를 물어보세요. (혜택 관련 질문은 메인 채팅을 이용하세요.)';

  @override
  String get helpBot_streaming => '생각 중…';

  @override
  String get helpBot_error => '도움말 도우미에 연결할 수 없습니다. 잠시 후 다시 시도하세요.';

  @override
  String get helpBot_close => '도움말 닫기';
}
