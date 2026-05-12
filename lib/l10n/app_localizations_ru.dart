// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get nav_home => 'Главная';

  @override
  String get nav_dashboard => 'Панель планирования';

  @override
  String get nav_results => 'Результаты';

  @override
  String get nav_whatif => 'Лаборатория «Что если»';

  @override
  String get nav_explorer => 'Каталог программ';

  @override
  String get page_homeTitle => 'Benefits Digger';

  @override
  String get page_dashboardTitle => 'Панель планирования - Benefits Digger';

  @override
  String get page_resultsTitle => 'Результаты - Benefits Digger';

  @override
  String get page_whatifTitle => 'Лаборатория «Что если» - Benefits Digger';

  @override
  String get page_explorerTitle => 'Каталог программ - Benefits Digger';

  @override
  String get app_eyebrow => 'Benefits Digger';

  @override
  String get app_headline =>
      'Планируйте, сравнивайте и подавайте заявки на пособия с опорой на официальные данные правительства.';

  @override
  String get app_lede =>
      'Пройдите проверку права на пособия, сравните гипотетические сценарии, изучите официальный каталог и уйдите с понятным планом действий, основанным на правительственных источниках.';

  @override
  String get home_startScreening => 'Начать проверку';

  @override
  String get home_trustPrivate =>
      'Ваши данные конфиденциальны и не сохраняются.';

  @override
  String get home_trustSources =>
      'Данные взяты прямо из официальных правительственных программ.';

  @override
  String get home_scope => 'Охват';

  @override
  String get home_scopeBoth => 'Федеральный и штата';

  @override
  String get home_scopeFederal => 'Только федеральный';

  @override
  String get home_scopeState => 'Только штата';

  @override
  String get home_state => 'Штат';

  @override
  String get home_chooseState => 'Выберите штат';

  @override
  String get home_breadth => 'Широта';

  @override
  String get home_breadthFocused => 'Сфокусированно';

  @override
  String get home_breadthBalanced => 'Сбалансированно';

  @override
  String get home_breadthBroad => 'Широко';

  @override
  String get home_depth => 'Глубина';

  @override
  String get home_depthLight => 'Обзорная';

  @override
  String get home_depthStandard => 'Стандартная';

  @override
  String get home_depthDetailed => 'Подробная';

  @override
  String get home_categories => 'Категории пособий';

  @override
  String get home_categoriesHint =>
      'Выберите хотя бы одну категорию, чтобы найти пособия, на которые вы можете претендовать, и узнать, как подать заявку.';

  @override
  String get home_selectAll => 'Выбрать все';

  @override
  String get home_clear => 'Очистить';

  @override
  String get home_apply => 'Применить';

  @override
  String get home_reset => 'Сбросить';

  @override
  String get home_refreshSources => 'Обновить официальные источники';

  @override
  String get home_questionFlow => 'Поток вопросов';

  @override
  String get home_questionEmpty => 'Начните сессию, чтобы запустить проверку.';

  @override
  String get home_saveAnswer => 'Сохранить ответ';

  @override
  String get home_backQuestion => 'К предыдущему вопросу';

  @override
  String get home_showResults => 'Показать результаты сейчас';

  @override
  String get home_reviewQueue => 'Очередь проверки';

  @override
  String get home_refreshQueue => 'Обновить очередь';

  @override
  String get home_noReviewTasks => 'Задач для проверки пока нет.';

  @override
  String home_breadthApprox(String description, String count) {
    return '$description (~$count вопросов)';
  }

  @override
  String home_depthApprox(String description) {
    return '$description';
  }

  @override
  String get home_noMoreQuestions => 'Больше вопросов нет. Результаты готовы.';

  @override
  String get home_noProgramsFound =>
      'Не удалось найти программы пособий, соответствующие вашему выбору. Расширьте категории или выберите другой штат.';

  @override
  String get home_selectCategory =>
      'Выберите хотя бы одну категорию перед применением.';

  @override
  String get home_chooseScope =>
      'Выберите охват проверки перед началом сессии.';

  @override
  String get home_chooseStateMsg =>
      'Выберите штат перед запуском проверки штата или совмещённой проверки.';

  @override
  String get home_chooseOne => 'Выберите один';

  @override
  String get home_searching => 'Поиск...';

  @override
  String get home_creatingSession => 'Создание сессии...';

  @override
  String get home_creatingSessionState =>
      'Создание сессии и загрузка пособий штата...';

  @override
  String home_sessionLive(String sessionId) {
    return 'Сессия $sessionId запущена.';
  }

  @override
  String home_sessionError(String error) {
    return 'Не удалось начать сессию: $error';
  }

  @override
  String get home_answerRequired => 'Выберите ответ перед продолжением.';

  @override
  String get home_answerSaved => 'Ответ сохранён.';

  @override
  String home_answerError(String error) {
    return 'Не удалось сохранить ответ: $error';
  }

  @override
  String get home_resultsRefreshed => 'Результаты обновлены.';

  @override
  String get home_refreshingOfficialSources =>
      'Обновление официальных источников...';

  @override
  String get home_officialSourcesRefreshed =>
      'Официальные источники обновлены.';

  @override
  String home_syncSummary(String added, String crawled) {
    return 'Официальные источники обновлены. Просканировано $crawled сайтов программ и добавлено $added прямых источников государственных страниц.';
  }

  @override
  String home_syncFailed(String error) {
    return 'Сбой синхронизации: $error';
  }

  @override
  String home_sensitivity(String level) {
    return 'чувствительность $level';
  }

  @override
  String get home_sourceLabel => 'Источник';

  @override
  String home_reviewTaskMeta(String score, String diffType) {
    return '$diffType · значимость $score';
  }

  @override
  String get home_adminKey => 'Ключ доступа администратора';

  @override
  String get home_adminPlaceholder =>
      'Нужен только при включённой защите администратора';

  @override
  String get home_adminHelp =>
      'Используется только для очереди проверки и обновления источников. Хранится в этой вкладке браузера до очистки.';

  @override
  String get home_saveKey => 'Сохранить ключ';

  @override
  String get home_clearKey => 'Очистить ключ';

  @override
  String get home_adminSaved =>
      'Ключ администратора сохранён в этой вкладке браузера.';

  @override
  String get home_adminCleared => 'Ключ администратора очищен.';

  @override
  String get home_lifeIntakePill => 'Ввод жизненной ситуации';

  @override
  String get home_lifeIntakeTitle => 'Опишите вашу ситуацию';

  @override
  String get home_lifeIntakeLabel => 'Расскажите о трудности своими словами';

  @override
  String get home_lifeIntakePlaceholder =>
      'Пример: я потерял работу, у меня задолженность по аренде, и я хочу понять, есть ли помощь по продуктам и медицинской страховке.';

  @override
  String get home_lifeIntakeHint =>
      'Не нужно классифицировать проблему. Мы превратим описание в предлагаемые категории, вероятные факты и самые важные следующие вопросы.';

  @override
  String get home_lifeIntakeAnalyze => 'Проанализировать ситуацию';

  @override
  String get home_lifeIntakeClear => 'Очистить ввод';

  @override
  String get home_lifeSummaryTitle => 'Что я услышал';

  @override
  String get home_lifeSuggestedScope => 'Предлагаемый охват';

  @override
  String get home_lifeSuggestedState => 'Предлагаемый штат';

  @override
  String get home_lifeCategoriesTitle => 'Предлагаемые сферы пособий';

  @override
  String get home_lifeFactsTitle => 'Структурированные факты пока что';

  @override
  String get home_lifeMissingTitle => 'Полезно ещё спросить';

  @override
  String get home_lifeApply => 'Использовать эти подсказки в проверке';

  @override
  String get home_lifeStart => 'Начать проверку из чата';

  @override
  String get home_lifeChatTitle => 'Помощник по пособиям';

  @override
  String get home_lifeAssistantName => 'Zobo';

  @override
  String get home_lifeChatLauncherLabel => 'Открыть помощника Zobo';

  @override
  String get home_lifeChatClose => 'Свернуть помощника';

  @override
  String get home_lifeChatMinimize => 'Свернуть';

  @override
  String get home_lifeChatHint =>
      'Расскажите, что происходит, и я задам по одному короткому уточнению.';

  @override
  String get home_lifeChatEmpty =>
      'Начните с описания ситуации, и я переведу её в сферы пособий и следующие вопросы.';

  @override
  String get home_lifeChatInputLabel => 'Ответьте помощнику';

  @override
  String get home_lifeChatWelcome =>
      'Здравствуйте. Я Zobo. Расскажите немного о ситуации, и я помогу разобраться с дальнейшими шагами.';

  @override
  String get home_lifeChatWelcomeSession =>
      'Здравствуйте. Я Zobo. Я могу помочь, пока вы просматриваете эту сессию. Спросите про результат, недостающий факт или следующий шаг.';

  @override
  String get home_lifeChatPlaceholder =>
      'Попробуйте: я потерял работу, задолженность по аренде, нужна помощь с продуктами.';

  @override
  String get home_lifeChatPlaceholderYesNo =>
      'Здесь достаточно короткого «да» или «нет».';

  @override
  String get home_lifeChatPlaceholderState =>
      'Ответьте названием штата, например CA, Калифорния или New York.';

  @override
  String get home_lifeChatSend => 'Ответить';

  @override
  String get home_lifeChatSending => 'Отправка...';

  @override
  String get home_lifeChatQuickReplies => 'Быстрые ответы';

  @override
  String get home_lifeChatNavigate => 'Также можно перейти в';

  @override
  String get home_navAction_use_screener => 'Использовать проверку';

  @override
  String get home_navAction_start_screening => 'Начать проверку';

  @override
  String get home_navAction_open_explorer => 'Открыть каталог программ';

  @override
  String get home_navAction_open_results => 'Открыть результаты';

  @override
  String get home_navAction_open_dashboard => 'Открыть панель планирования';

  @override
  String get home_lifeChatUserLabel => 'Вы';

  @override
  String get home_lifeChatStatusEmpty => 'Расскажите о ситуации, чтобы начать.';

  @override
  String get home_lifeChatStatusWaitingDetails =>
      'Расскажите чуть больше, чтобы я мог точнее направить.';

  @override
  String get home_lifeChatStatusThinking => 'Обдумываю ваше обновление...';

  @override
  String get home_lifeChatStatusReady => 'У меня есть короткое уточнение.';

  @override
  String get home_lifeChatStatusDone =>
      'У меня достаточно данных, чтобы двигаться дальше.';

  @override
  String get home_lifeNoCategories => 'Сферы пособий пока не определены.';

  @override
  String get home_lifeNoFacts => 'Структурированных фактов пока нет.';

  @override
  String get home_lifeNoMissing =>
      'Сейчас не хватает критичных уточняющих вопросов.';

  @override
  String get home_lifeApplyDone =>
      'Подсказки помощника перенесены в элементы проверки.';

  @override
  String get home_lifeStarted => 'Проверка начата по подсказкам помощника.';

  @override
  String get home_lifeDescriptionRequired =>
      'Расскажите о ситуации, чтобы я мог помочь.';

  @override
  String get home_lifeAnalyzing => 'Анализирую вашу ситуацию...';

  @override
  String get home_lifeAnalyzed => 'Ввод жизненной ситуации обновлён.';

  @override
  String home_lifeInterpretError(String error) {
    return 'Не удалось проанализировать ввод: $error';
  }

  @override
  String get home_lifeProbeUpdated => 'Добавлены детали по уточнению.';

  @override
  String home_lifeProbeError(String error) {
    return 'Не удалось обработать это уточнение: $error';
  }

  @override
  String get results_title => 'Результаты';

  @override
  String results_liveMatches(String count) {
    return '$count совпадений в реальном времени';
  }

  @override
  String get results_print => 'Печать';

  @override
  String get results_redoScreening => 'Повторить проверку';

  @override
  String get results_downloadPdf => 'Скачать PDF';

  @override
  String get results_scrollUp => 'Прокрутить вверх';

  @override
  String get results_scrollDown => 'Прокрутить вниз';

  @override
  String get results_generatingPdf => 'Создание...';

  @override
  String get results_noSession =>
      'Нет активной сессии. Сначала <a href=\"/\">начните проверку</a>.';

  @override
  String get results_federalTitle => 'Федеральные результаты';

  @override
  String get results_stateTitle => 'Результаты штата';

  @override
  String get results_noFederal =>
      'Пока нет федеральных результатов. Ответьте на больше вопросов, чтобы улучшить совпадения.';

  @override
  String get results_noState =>
      'Пока нет результатов штата. Ответьте на больше вопросов, чтобы улучшить совпадения.';

  @override
  String get results_federalOnlyFinished =>
      'Это сессия только по федеральному охвату, поэтому результаты штата не показаны.';

  @override
  String get results_federalOnlyHidden =>
      'Результаты штата скрыты при выборе охвата «Только федеральный».';

  @override
  String results_loadError(String error) {
    return 'Не удалось загрузить результаты: $error';
  }

  @override
  String get dashboard_title => 'Панель планирования';

  @override
  String get dashboard_noSession => 'Нет активной сессии';

  @override
  String get dashboard_empty =>
      'Активной сессии пока нет. Запустите сессию, чтобы открыть сводку плана, шаги и анализ недостающих фактов.';

  @override
  String get dashboard_goHome => 'На главную, чтобы начать сессию';

  @override
  String get dashboard_downloadPdf => 'Скачать PDF';

  @override
  String get dashboard_generatingPdf => 'Создание...';

  @override
  String get dashboard_benefitStack => 'Набор пособий';

  @override
  String get dashboard_missingFacts => 'Главные недостающие факты';

  @override
  String get dashboard_actions => 'Рекомендуемые следующие шаги';

  @override
  String get dashboard_sourceHub => 'Хаб официальных источников';

  @override
  String get dashboard_docChecklist => 'Список документов';

  @override
  String get dashboard_planningNotes => 'Заметки по плану';

  @override
  String get dashboard_likelyPrograms => 'Вероятные программы';

  @override
  String get dashboard_possiblePrograms => 'Возможные программы';

  @override
  String get dashboard_answeredQuestions => 'Отвеченные вопросы';

  @override
  String get dashboard_avgRuleCoverage => 'Среднее покрытие правил';

  @override
  String get dashboard_estMonthly => 'Оцен. ежемесячные пособия';

  @override
  String get dashboard_noBenefitStack => 'Набор пособий пока пуст.';

  @override
  String get dashboard_noMissingFacts =>
      'Сейчас нет точек с недостающими фактами.';

  @override
  String get dashboard_noActions => 'Шагов пока нет.';

  @override
  String get dashboard_noSourceHub => 'Хаб официальных источников пока пуст.';

  @override
  String get dashboard_noDocuments =>
      'Документы пока не нужны. Завершите проверку, чтобы увидеть требования.';

  @override
  String get dashboard_noPlanningNotes =>
      'Заметки по плану появятся после получения результатов.';

  @override
  String dashboard_loadError(String error) {
    return 'Не удалось загрузить план: $error';
  }

  @override
  String get dashboard_noSessionLink =>
      'Нет активной сессии. Сначала <a href=\"/\">начните проверку</a>.';

  @override
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  ) {
    return 'Широта $breadthLabel ($breadthPercent%) · Глубина $depthLabel ($depthPercent%)';
  }

  @override
  String get dashboard_likely => 'вероятно';

  @override
  String get dashboard_possible => 'возможно';

  @override
  String get dashboard_noTopPrograms => 'Топ-программ пока нет.';

  @override
  String dashboard_confidence(String value) {
    return 'уверенность $value/100';
  }

  @override
  String dashboard_affects(String count) {
    return 'Влияет на $count совпадений программ.';
  }

  @override
  String dashboard_neededFor(String programs) {
    return 'Нужно для: $programs';
  }

  @override
  String get whatif_title => 'Лаборатория «Что если»';

  @override
  String get whatif_pill => 'Сравнение сценариев';

  @override
  String get whatif_noSession =>
      'Нет активной сессии. Сначала <a href=\"/\">начните проверку</a>.';

  @override
  String get whatif_quickStartIntro =>
      'Нет активной сессии. Запустите её здесь, чтобы прогонять сценарии:';

  @override
  String get whatif_scopeLabel => 'Охват';

  @override
  String get whatif_stateLabel => 'Штат';

  @override
  String get whatif_categoriesLabel => 'Категории пособий';

  @override
  String get whatif_startSession => 'Запустить сессию';

  @override
  String get whatif_description =>
      'Прогоняйте сравнения сценариев, не меняя сохранённые ответы. Эти пресеты показывают, как изменяется набор результатов при изменении одного жизненного факта.';

  @override
  String get whatif_startThenRun =>
      'Запустите сессию, затем выполните сценарий.';

  @override
  String get whatif_noResult => 'Сценарий не вернул результат.';

  @override
  String get whatif_scenarioCompare => 'Сравнение сценариев';

  @override
  String get whatif_likelyDelta => 'Дельта вероятных';

  @override
  String get whatif_possibleDelta => 'Дельта возможных';

  @override
  String get whatif_federalDelta => 'Дельта федеральных';

  @override
  String get whatif_stateDelta => 'Дельта штата';

  @override
  String get whatif_newPrograms => 'Новые или открывшиеся программы';

  @override
  String get whatif_improvedPrograms => 'Улучшившиеся программы';

  @override
  String get whatif_noNewMatches =>
      'В этом сценарии нет новых положительных совпадений.';

  @override
  String get whatif_noImprovements => 'В этом сценарии нет улучшений статуса.';

  @override
  String get whatif_toStatus => '→';

  @override
  String get whatif_startFirst => 'Запустите сессию перед запуском сценариев.';

  @override
  String get whatif_updated => 'Сравнение сценариев обновлено.';

  @override
  String whatif_failed(String error) {
    return 'Сбой сравнения сценариев: $error';
  }

  @override
  String get explorer_title => 'Каталог программ';

  @override
  String get explorer_refresh => 'Обновить каталог';

  @override
  String get explorer_description =>
      'Гибридный каталог сочетает описание потребности на простом языке с официальным каталогом. При наличии настройки используется Gemini для интерпретации, и всегда есть запасной локальный обоснованный поиск.';

  @override
  String get explorer_scope => 'Охват';

  @override
  String get explorer_state => 'Штат';

  @override
  String get explorer_describe => 'Опишите, что вам нужно';

  @override
  String get explorer_describePlaceholder =>
      'Пример: я потерял родственника в Калифорнии и нуждаюсь в помощи с расходами на похороны и пособиями выжившим.';

  @override
  String get explorer_search => 'Точный поиск по ключевому слову';

  @override
  String get explorer_placeholder =>
      'Попробуйте «пенсия», «инвалидность», «похороны», «ветераны»...';

  @override
  String get explorer_submit => 'Запустить гибридный поиск';

  @override
  String get explorer_empty =>
      'Используйте каталог для просмотра текущего официального списка программ.';

  @override
  String get explorer_noMatch =>
      'По этому запросу ничего не найдено. Расширьте описание или уберите фильтр.';

  @override
  String get explorer_minChars =>
      'Для точного поиска введите минимум 2 символа.';

  @override
  String get explorer_openOfficial => 'Открыть официальную страницу';

  @override
  String explorer_failed(String error) {
    return 'Сбой каталога: $error';
  }

  @override
  String get explorer_methodGemini => 'Gemini + обоснованный каталог';

  @override
  String get explorer_methodHeuristic =>
      'Обоснованный каталог + локальная интерпретация';

  @override
  String get explorer_interpretationTitle => 'Интерпретация запроса';

  @override
  String get explorer_needAreas => 'Сферы потребностей';

  @override
  String get explorer_stateLabel => 'Штат:';

  @override
  String get explorer_searchTerms => 'Поисковые термины:';

  @override
  String explorer_score(String score) {
    return 'Оценка $score';
  }

  @override
  String get explorer_browseSummary =>
      'Просмотр официального каталога программ.';

  @override
  String get explorer_localizedSummary =>
      'Показывает, как ваш запрос интерпретирован на основе локального обоснованного каталога.';

  @override
  String get card_confidence => 'Уверенность';

  @override
  String get card_clickExpand => '(нажмите, чтобы развернуть)';

  @override
  String get card_eligibilityCriteria => 'Критерии права';

  @override
  String get card_criteriaMet => 'выполнено';

  @override
  String get card_met => 'выполнено';

  @override
  String get card_notMet => 'не выполнено';

  @override
  String get card_unanswered => 'не отвечено';

  @override
  String get card_amount => 'Сумма';

  @override
  String get card_amountEstimated => ' (оценка)';

  @override
  String get card_whyMatched => 'Почему совпало';

  @override
  String get card_noMatchedReasons => 'Причин совпадения пока нет.';

  @override
  String get card_missingFacts => 'Что ещё не хватает';

  @override
  String get card_noMissingFacts => 'В этом проходе недостающих фактов нет.';

  @override
  String get card_documentsNeeded => 'Необходимые документы';

  @override
  String get card_noDocuments =>
      'Список документов для этой программы недоступен.';

  @override
  String get card_dataGathered =>
      'Данные собраны с официальных правительственных сайтов';

  @override
  String get card_noSources =>
      'Официальные правительственные источники не приложены.';

  @override
  String get card_howToGet => 'Как получить это пособие';

  @override
  String get card_noApplicationPath =>
      'Официальный путь подачи заявки пока недоступен.';

  @override
  String get card_openOfficial => 'Открыть официальную страницу';

  @override
  String get card_useSourcesBelow => 'Используйте официальные источники ниже.';

  @override
  String get card_notAvailable => 'Недоступно';

  @override
  String get card_unknownAgency => 'Неизвестное агентство';

  @override
  String get card_noSummary => 'Описание отсутствует.';

  @override
  String get card_noBreakdown => 'Разбивка недоступна.';

  @override
  String card_verified(String date) {
    return 'проверено $date';
  }

  @override
  String get category_children_families => 'Дети и семьи';

  @override
  String get category_death => 'Смерть';

  @override
  String get category_disabilities => 'Инвалидность';

  @override
  String get category_disasters => 'Стихийные бедствия';

  @override
  String get category_education => 'Образование';

  @override
  String get category_food => 'Питание';

  @override
  String get category_general => 'Общее';

  @override
  String get category_health => 'Здоровье';

  @override
  String get category_housing_utilities => 'Жильё и коммунальные услуги';

  @override
  String get category_jobs_unemployment => 'Работа и безработица';

  @override
  String get category_military_veterans => 'Военные и ветераны';

  @override
  String get category_retirement_seniors => 'Пенсия и пожилые';

  @override
  String get category_welfare_cash_assistance => 'Соцпомощь и денежная помощь';

  @override
  String get breadth_focused =>
      '«Сфокусированно» делает проверку короткой и сосредоточен на самых сильных сигналах программ.';

  @override
  String get breadth_balanced =>
      '«Сбалансированно» исследует умеренное число возможных программ перед остановкой.';

  @override
  String get breadth_broad =>
      '«Широко» дольше ищет, чтобы охватить больше возможных программ.';

  @override
  String get depth_light =>
      '«Обзорная» сохраняет вопросы общими — обычно «да/нет» или простые категории.';

  @override
  String get depth_standard =>
      '«Стандартная» сочетает общие вопросы с более конкретными уточнениями.';

  @override
  String get depth_detailed =>
      '«Подробная» уточняет точные суммы, даты, длительности и другие точные факты, когда это возможно.';

  @override
  String get scenario_limitedIncome =>
      'Если бы у меня были ограниченные доходы и средства';

  @override
  String get scenario_limitedIncomeDesc =>
      'Полезно для денежной помощи или планирования по типу SSI.';

  @override
  String get scenario_disability =>
      'Если бы у меня была подходящая инвалидность';

  @override
  String get scenario_disabilityDesc =>
      'Проверяет пути по инвалидности и правила ограничений по работе.';

  @override
  String get scenario_military => 'Если бы у меня была активная военная служба';

  @override
  String get scenario_militaryDesc =>
      'Проверяет, открывает ли история службы льготы для ветеранов.';

  @override
  String get scenario_familyDeath => 'Если в семье недавно произошла смерть';

  @override
  String get scenario_familyDeathDesc =>
      'Изучает помощь выжившим и оплате похорон.';

  @override
  String get status_likely_eligible => 'вероятно имеет право';

  @override
  String get status_possibly_eligible => 'возможно имеет право';

  @override
  String get status_unclear => 'Неясно';

  @override
  String get status_likely_ineligible => 'вероятно не имеет права';

  @override
  String get sensitivity_low => 'низкая';

  @override
  String get sensitivity_medium => 'средняя';

  @override
  String get sensitivity_high => 'высокая';

  @override
  String get certainty_rule_coverage => 'покрытие правил';

  @override
  String get certainty_source_authority => 'авторитет источника';

  @override
  String get certainty_source_freshness => 'свежесть источника';

  @override
  String get certainty_program_determinism => 'детерминизм программы';

  @override
  String get certainty_amount_determinism => 'детерминизм суммы';

  @override
  String get intake_scope_federal => 'Пока только федеральный';

  @override
  String get intake_scope_state => 'Проверка по штату';

  @override
  String get intake_scope_both => 'Федеральная и штатная проверка';

  @override
  String get intake_fact_state_code => 'Выбран штат';

  @override
  String get intake_fact_applicant_income => 'Ограниченные доходы и средства';

  @override
  String get intake_fact_applicant_disability =>
      'Инвалидность или подходящее заболевание';

  @override
  String get intake_fact_applicant_ability_to_work =>
      'Не в состоянии работать год или более';

  @override
  String get intake_fact_applicant_served_in_active_military =>
      'Активная военная служба';

  @override
  String get intake_fact_applicant_service_disability =>
      'Инвалидность, связанная со службой';

  @override
  String get intake_fact_applicant_dolo => 'Недавняя смерть в семье';

  @override
  String get intake_fact_deceased_died_of_COVID => 'Смерть, связанная с COVID';

  @override
  String get intake_fact_deceased_death_location_is_US =>
      'Смерть произошла в США';

  @override
  String get intake_fact_applicant_paid_into_SS =>
      'Работали и платили взносы Social Security';

  @override
  String get intake_fact_recent_job_loss =>
      'Недавняя потеря работы или снижение часов';

  @override
  String get intake_fact_housing_urgency =>
      'Срочное давление по жилью или коммунальным услугам';

  @override
  String get intake_fact_food_insecurity => 'Трудности с продуктами';

  @override
  String get intake_fact_current_student => 'Учится или проходит профобучение';

  @override
  String get intake_fact_has_children => 'Дети или иждивенцы в домохозяйстве';

  @override
  String get intake_fact_is_62_or_older => '62 года и старше';

  @override
  String get intake_fact_recent_disaster_impact =>
      'Недавнее воздействие стихийного бедствия';

  @override
  String get intake_fact_needs_health_coverage =>
      'Нужна медстраховка или помощь';

  @override
  String get intake_fact_annual_income_amount => 'Примерный годовой доход';

  @override
  String get docType_required => 'обязательно';

  @override
  String get docType_recommended => 'рекомендовано';

  @override
  String get reviewStatus_open => 'открыто';

  @override
  String get reviewDiff_eligibility => 'право';

  @override
  String get reviewDiff_structural => 'структура';

  @override
  String get reviewDiff_content => 'контент';

  @override
  String get server_step_startState =>
      'Начните на официальном сайте социальных служб штата.';

  @override
  String get server_step_useStateTools =>
      'Используйте официальные инструменты или страницы программ штата, чтобы выбрать нужное пособие.';

  @override
  String get server_step_followStateInstructions =>
      'Следуйте официальным инструкциям штата по документам, контактам местного офиса или онлайн-подаче.';

  @override
  String get server_step_reviewEligibility =>
      'Просмотрите официальный правительственный источник критериев права для этого совпадения.';

  @override
  String get server_step_openOfficial =>
      'Откройте официальную правительственную страницу, чтобы начать или продолжить заявку.';

  @override
  String get server_step_useSamePage =>
      'Используйте ту же официальную страницу для нужных документов, проверки статуса или контактов агентства.';

  @override
  String server_note_strongMatches(String plural, String count) {
    return 'У вас уже $count сильных совпадений$plural, которые можно подавать на официальных правительственных сайтах.';
  }

  @override
  String server_note_possibleMatches(String plural, String count) {
    return 'У вас $count возможных совпадений$plural; ответы на ещё несколько вопросов уточнят их.';
  }

  @override
  String server_note_biggestGap(String label) {
    return 'Самый большой пробел в информации сейчас: $label.';
  }

  @override
  String get server_note_chooseState =>
      'Выберите штат, чтобы открыть официальные пути пособий штата.';

  @override
  String get admin_invalidKey =>
      'Сохранённый ключ администратора отклонён. Обновите его и попробуйте снова.';

  @override
  String get admin_requiredKey =>
      'Нужен ключ администратора. Введите его в поле «Доступ администратора», чтобы пользоваться действиями проверки и синхронизации.';

  @override
  String errors_requestFailed(String status) {
    return 'Запрос завершился со статусом $status.';
  }

  @override
  String get errors_genericTitle => 'Что-то пошло не так';

  @override
  String get errors_generic => 'Что-то пошло не так. Повторите попытку.';

  @override
  String get errors_validation =>
      'Не удалось обработать запрос — обновите и попробуйте снова.';

  @override
  String get errors_rateLimited =>
      'Слишком много запросов. Подождите минуту и повторите.';

  @override
  String get errors_server =>
      'Сервис испытывает проблемы. Повторите попытку позже.';

  @override
  String get errors_network =>
      'Не удалось подключиться к серверу. Проверьте соединение.';

  @override
  String get errors_timeout =>
      'Время ожидания запроса истекло. Повторите попытку.';

  @override
  String get errors_auth => 'Чтобы это сделать, нужно войти в систему.';

  @override
  String get errors_notFound => 'Мы не нашли то, что вы искали.';

  @override
  String get errors_tryAgain => 'Повторить';

  @override
  String results_federalSection(int count) {
    return 'Федеральные программы ($count)';
  }

  @override
  String results_stateSection(int count) {
    return 'Программы штата ($count)';
  }

  @override
  String get results_emptyFederal =>
      'Нет совпадений по федеральным программам. Ответьте на больше вопросов или расширьте проверку.';

  @override
  String get results_emptyState =>
      'Совпадений по программам штата пока нет. Добавьте штат в проверке, чтобы увидеть локальные программы.';

  @override
  String get results_viewActionPlan => 'Посмотреть план действий';

  @override
  String get results_couldNotLoad => 'Не удалось загрузить ваши результаты.';

  @override
  String get dashboard_couldNotLoad =>
      'Не удалось загрузить ваш план действий.';

  @override
  String get dashboard_applyLinkUnavailable =>
      'Ссылка на подачу недоступна — обратитесь в местное агентство.';

  @override
  String get dashboard_apply => 'Подать заявку';

  @override
  String dashboard_step(int n) {
    return 'Шаг $n';
  }

  @override
  String get dashboard_emptyStack =>
      'Набор пособий для вас пока не сформирован. Завершите проверку, чтобы заполнить его.';

  @override
  String get dashboard_emptyActions =>
      'Следующих шагов пока нет — ответьте ещё на несколько вопросов, чтобы получить план.';

  @override
  String get dashboard_emptyDocuments => 'Документы пока не нужны.';

  @override
  String get dashboard_emptyNotes =>
      'Дополнительных заметок для вашей ситуации нет.';

  @override
  String get dashboard_emptySources => 'Ссылок на источники нет.';

  @override
  String get dashboard_helpNarrowDown => 'Помогите сузить поиск';

  @override
  String get dashboard_missingFactsHint =>
      'Ответы откроют более точные совпадения.';

  @override
  String get dashboard_resumeScreening => 'Продолжить проверку';

  @override
  String get dashboard_documentsTitle => 'Документы для сбора';

  @override
  String get dashboard_notesTitle => 'Заметки по плану';

  @override
  String get dashboard_sourceHubTitle => 'Хаб официальных источников';

  @override
  String get dashboard_stackTitle => 'Ваш набор пособий';

  @override
  String get dashboard_actionsTitle => 'Следующие шаги';

  @override
  String get status_likelyEligible => 'Вероятно имеет право';

  @override
  String get status_possiblyEligible => 'Возможно имеет право';

  @override
  String get status_likelyIneligible => 'Скорее всего нет';

  @override
  String get dynamic_question_dob => 'Какова ваша дата рождения?';

  @override
  String get dynamic_hint_dobExample => 'Например: 1990-01-20';

  @override
  String get dynamic_question_paidIntoSS =>
      'Вы когда-либо работали и платили налоги Social Security США?';

  @override
  String get dynamic_question_limitedIncome =>
      'У вас ограниченные доходы и средства?';

  @override
  String get dynamic_hint_limitedIncome =>
      'Это широкий проверочный вопрос, не итоговое решение.';

  @override
  String get dynamic_question_disability =>
      'У вас есть инвалидность или подходящее заболевание?';

  @override
  String get dynamic_question_unableToWork =>
      'Вы не можете работать год или более из-за инвалидности?';

  @override
  String get dynamic_question_activeMilitary =>
      'Вы служили в активной армии, ВМС или ВВС?';

  @override
  String get dynamic_question_serviceDisabilityDetailed =>
      'Ваша инвалидность вызвана или ухудшена активной военной службой?';

  @override
  String get dynamic_question_familyDeathDetailed =>
      'Недавно ли вы пережили смерть близкого члена семьи?';

  @override
  String get dynamic_question_dateOfDeath => 'Какова дата смерти?';

  @override
  String get dynamic_hint_dateOfDeath =>
      'Если точно не помните, укажите примерную дату.';

  @override
  String get dynamic_question_covidDeath => 'Смерть была связана с COVID-19?';

  @override
  String get dynamic_question_deathInUs => 'Смерть произошла в США?';

  @override
  String get dynamic_hint_deathInUs => 'Включая Пуэрто-Рико и территории США.';

  @override
  String get dynamic_question_householdIncome =>
      'Каков примерный годовой доход домохозяйства?';

  @override
  String get dynamic_hint_householdIncome =>
      'Для справки: федеральная черта бедности на 2024 год — 15 060 \$/год для одного человека. Многие программы используют 130–200% от этой границы.';

  @override
  String get dynamic_question_disabilityType =>
      'Какой тип инвалидности или состояния у вас?';

  @override
  String get dynamic_hint_disabilityType =>
      'Выберите все подходящие. По правилам SSA подходящая инвалидность должна существенно ограничивать способность выполнять основные рабочие действия.';

  @override
  String get dynamic_question_monthsUnableToWork =>
      'Сколько месяцев состояние мешает вам работать?';

  @override
  String get dynamic_hint_monthsUnableToWork =>
      'SSDI требует невозможности заниматься существенной оплачиваемой деятельностью не менее 12 месяцев подряд (42 U.S.C. § 423(d)(1)(A)).';

  @override
  String get dynamic_question_approxAge => 'Каков ваш примерный возраст?';

  @override
  String get dynamic_hint_approxAge =>
      'Для быстрой проверки достаточно приблизительного возраста.';

  @override
  String get dynamic_question_exactDob => 'Какова точная дата рождения?';

  @override
  String get dynamic_hint_exactDob =>
      'Полный пенсионный возраст: 66 для рождённых 1943–1954 гг., постепенно растёт до 67 для рождённых с 1960 года (42 U.S.C. § 416(l)).';

  @override
  String get dynamic_question_militaryVeteran => 'Вы военный ветеран?';

  @override
  String get dynamic_hint_activeMilitary =>
      'Льготы VA требуют активной службы. Резервистам/Нацгвардии могут засчитать, если они активированы по федеральному приказу (38 U.S.C. § 101(2)).';

  @override
  String get dynamic_question_serviceDisabilitySimple =>
      'Ваша инвалидность связана с военной службой?';

  @override
  String get dynamic_hint_serviceDisabilityDetailed =>
      'Компенсация по инвалидности VA требует состояния, связанного со службой, с рейтингом инвалидности не менее 10% (38 U.S.C. § 1110).';

  @override
  String get dynamic_question_familyDeathSimple =>
      'Вы недавно потеряли члена семьи?';

  @override
  String get dynamic_hint_familyDeathDetailed =>
      'Право на пособия по выжившему зависит от вашего отношения к умершему и его трудовой истории (42 U.S.C. § 402).';

  @override
  String get dynamic_question_stateCode =>
      'Для какого штата или территории вы хотите получить пособия штата?';

  @override
  String get dynamic_hint_stateCode =>
      'Пособия штата отличаются по штатам и хранятся отдельно от федеральных совпадений.';

  @override
  String get dynamic_option_yes => 'Да';

  @override
  String get dynamic_option_no => 'Нет';

  @override
  String get dynamic_option_physicalDisability => 'Физическая инвалидность';

  @override
  String get dynamic_option_cognitiveDisability =>
      'Когнитивная или интеллектуальная инвалидность';

  @override
  String get dynamic_option_sensoryDisability =>
      'Сенсорная инвалидность (зрение/слух)';

  @override
  String get dynamic_option_mentalHealth => 'Психическое состояние';

  @override
  String get dynamic_option_chronicIllness => 'Хроническое заболевание';

  @override
  String get dynamic_option_noneOfTheAbove => 'Ничего из перечисленного';

  @override
  String get dynamic_summary_retirement =>
      'Ежемесячный пенсионный доход для тех, кто работал и платил налоги Social Security.';

  @override
  String get dynamic_summary_ssdi =>
      'Ежемесячные пособия по инвалидности (SSDI) для тех, кто платил Social Security и не может работать из-за инвалидности.';

  @override
  String get dynamic_summary_ssi =>
      'Ежемесячная поддержка (SSI) для пожилых и людей с инвалидностью с ограниченными доходами и средствами.';

  @override
  String get dynamic_summary_vaDisability =>
      'Ежемесячные не облагаемые налогом выплаты ветеранам, чья инвалидность вызвана или ухудшена активной службой (VA Disability).';

  @override
  String get dynamic_summary_survivor =>
      'Ежемесячные выплаты Social Security подходящим членам семьи после смерти работника.';

  @override
  String get dynamic_summary_funeral =>
      'Финансовая помощь по расходам на похороны для умерших от COVID-19 в США (FEMA).';

  @override
  String get dynamic_reason_paidIntoSS =>
      'Вы работали и платили налоги Social Security.';

  @override
  String get dynamic_reason_retirementAge =>
      'Вы достигли пенсионного возраста.';

  @override
  String get dynamic_reason_limitedIncome =>
      'У вас ограниченные доходы и средства.';

  @override
  String get dynamic_reason_disability =>
      'У вас есть инвалидность или подходящее заболевание.';

  @override
  String get dynamic_reason_unableToWork =>
      'Вы не можете работать год или более из-за инвалидности.';

  @override
  String get dynamic_reason_activeMilitary => 'Вы служили в активной армии.';

  @override
  String get dynamic_reason_serviceDisability =>
      'Ваша инвалидность вызвана или ухудшена активной службой.';

  @override
  String get dynamic_reason_familyDeath =>
      'Вы недавно пережили смерть члена семьи.';

  @override
  String get dynamic_reason_covidDeath => 'Смерть умершего связана с COVID-19.';

  @override
  String get dynamic_reason_diedInUs => 'Умерший скончался в США.';

  @override
  String get dynamic_reason_afterDate =>
      'Умерший скончался после 20 мая 2020 года.';

  @override
  String get dynamic_amount_ssi =>
      'До 943 \$/мес для индивидуумов, 1 415 \$/мес для пар (ставки 2024).';

  @override
  String get dynamic_amount_retirement =>
      'Ежемесячная сумма зависит от трудовой истории и возраста подачи.';

  @override
  String get dynamic_amount_ssdi =>
      'Ежемесячная сумма зависит от трудовой истории.';

  @override
  String get dynamic_amount_vaDisability =>
      'Сумма зависит от рейтинга инвалидности и иждивенцев.';

  @override
  String get dynamic_amount_survivor =>
      'Ежемесячная сумма зависит от записи работника и вашего родства.';

  @override
  String get dynamic_amount_funeral =>
      'Сумма возмещения зависит от подходящих расходов на похороны.';

  @override
  String get dynamic_document_ssnCard =>
      'Карта или номер Social Security (SSN)';

  @override
  String get dynamic_document_ssnCardDesc => 'Ваш 9-значный SSN';

  @override
  String get dynamic_document_proofOfAge => 'Подтверждение возраста';

  @override
  String get dynamic_document_proofOfAgeDesc =>
      'Свидетельство о рождении или паспорт';

  @override
  String get dynamic_document_w2 =>
      'Формы W-2 или налоговые декларации самозанятого';

  @override
  String get dynamic_document_w2RecentDesc =>
      'Запись о доходах за последний год';

  @override
  String get dynamic_document_w2CurrentPriorDesc =>
      'Записи о доходах за текущий и прошлый годы';

  @override
  String get dynamic_document_bankInfo => 'Банковские реквизиты';

  @override
  String get dynamic_document_bankInfoDesc => 'Для прямого зачисления пособий';

  @override
  String get dynamic_document_medicalRecords => 'Медицинские записи';

  @override
  String get dynamic_document_medicalRecordsDesc =>
      'Документы об инвалидности от врачей, больниц или клиник';

  @override
  String get dynamic_document_incomeResources =>
      'Подтверждение доходов и средств';

  @override
  String get dynamic_document_incomeResourcesDesc =>
      'Платёжки, выписки или письма о пособиях';

  @override
  String get dynamic_document_disabilityDocsDesc => 'Документы об инвалидности';

  @override
  String get dynamic_document_livingArrangement =>
      'Подтверждение места жительства';

  @override
  String get dynamic_document_livingArrangementDesc =>
      'Договор аренды, ипотека или письмо арендодателя';

  @override
  String get dynamic_document_citizenship =>
      'Подтверждение гражданства или иммиграционного статуса';

  @override
  String get dynamic_document_citizenshipDesc =>
      'Свидетельство о рождении, паспорт или иммиграционные документы';

  @override
  String get dynamic_document_dd214 => 'DD-214 (документы об увольнении)';

  @override
  String get dynamic_document_dd214Desc =>
      'Свидетельство об освобождении или увольнении с активной службы';

  @override
  String get dynamic_document_serviceEvidenceDesc =>
      'Доказательства связи инвалидности с военной службой';

  @override
  String get dynamic_document_vaForm => 'VA Форма 21-526EZ';

  @override
  String get dynamic_document_vaFormDesc =>
      'Заявление на компенсацию по инвалидности';

  @override
  String get dynamic_document_deceasedSsn => 'SSN умершего';

  @override
  String get dynamic_document_deceasedSsnDesc => 'SSN работника';

  @override
  String get dynamic_document_deathCertificate => 'Свидетельство о смерти';

  @override
  String get dynamic_document_deathCertificateDesc =>
      'Заверенная копия свидетельства о смерти';

  @override
  String get dynamic_document_relationshipProof => 'Подтверждение родства';

  @override
  String get dynamic_document_relationshipProofDesc =>
      'Свидетельство о браке, рождении или усыновлении';

  @override
  String get dynamic_document_covidDeathCertificateDesc =>
      'Должно быть указано, что смерть связана с COVID-19';

  @override
  String get dynamic_document_funeralReceipts => 'Чеки на похоронные расходы';

  @override
  String get dynamic_document_funeralReceiptsDesc =>
      'Постатейные чеки или договоры от похоронных служб';

  @override
  String get dynamic_document_usResidency => 'Подтверждение проживания в США';

  @override
  String get dynamic_document_usResidencyDesc =>
      'Для лица, понёсшего расходы на похороны';

  @override
  String get dynamic_document_femaAppNumber => 'Номер заявки FEMA';

  @override
  String get dynamic_document_femaAppNumberDesc =>
      'Если вы ранее подавали другую заявку в FEMA';

  @override
  String get lang_en => 'English';

  @override
  String get lang_es => 'Español';

  @override
  String get brand_name => 'Benefits Digger';

  @override
  String get brand_tagline =>
      'Найдите все пособия, на которые можете претендовать. С опорой на официальные источники.';

  @override
  String get nav_screen => 'Проверка';

  @override
  String get nav_chat => 'Помощник';

  @override
  String get nav_programs => 'Программы';

  @override
  String get nav_skipToContent => 'Перейти к основному содержимому';

  @override
  String get nav_openMenu => 'Открыть меню';

  @override
  String get nav_closeMenu => 'Закрыть меню';

  @override
  String get theme_toggle => 'Переключить тему';

  @override
  String get theme_light => 'Светлая';

  @override
  String get theme_dark => 'Тёмная';

  @override
  String get theme_system => 'Системная';

  @override
  String get language_switcher => 'Язык';

  @override
  String get landing_eyebrow => 'Планируйте уверенно';

  @override
  String get landing_heroTitle =>
      'Узнайте все правительственные пособия, на которые можете претендовать.';

  @override
  String get landing_heroLede =>
      'Benefits Digger проводит вас через короткий разговор, проверяет на федеральные и штатные программы и обосновывает каждое совпадение официальным источником.';

  @override
  String get landing_startScreening => 'Начать проверку';

  @override
  String get landing_startScreeningHint =>
      'Пять минут. Конфиденциально. Аккаунт не нужен.';

  @override
  String get landing_askAssistant => 'Спросить помощника';

  @override
  String get landing_askAssistantHint => 'Опишите ситуацию своими словами.';

  @override
  String get landing_browsePrograms => 'Просмотр программ';

  @override
  String get landing_browseProgramsHint =>
      'Поиск по официальному каталогу программ.';

  @override
  String get landing_howItWorksTitle => 'Как это работает';

  @override
  String get landing_howItWorksLede =>
      'Три шага, уважающих ваше время и ситуацию.';

  @override
  String get landing_step1Title => 'Расскажите, что происходит';

  @override
  String get landing_step1Body =>
      'Введите одну фразу о вашей ситуации или ответьте на пару коротких «да/нет». Мы переведём вашу историю в структурированную проверку.';

  @override
  String get landing_step2Title => 'Сопоставляем с официальными правилами';

  @override
  String get landing_step2Body =>
      'Каждая программа оценивается по последним федеральным или штатным правилам. Где данных не хватает — мы прямо об этом скажем.';

  @override
  String get landing_step3Title => 'Уйдите с планом';

  @override
  String get landing_step3Body =>
      'Получите чек-лист дальнейших шагов, нужные документы и прямые ссылки на официальные страницы для подачи.';

  @override
  String get landing_trustTitle => 'Почему результатам доверяют';

  @override
  String get landing_trustOfficial => 'Источник — официальные .gov-документы';

  @override
  String get landing_trustOfficialBody =>
      'Каждое совпадение основано на опубликованных правилах агентств и ссылается на оригинал.';

  @override
  String get landing_trustPrivate => 'Конфиденциально по умолчанию';

  @override
  String get landing_trustPrivateBody =>
      'Ваши ответы остаются в сессии браузера. Мы их не продаём, не передаём и не требуем входа.';

  @override
  String get landing_trustExplainable => 'Объяснимая уверенность';

  @override
  String get landing_trustExplainableBody =>
      'Мы объясняем, почему совпала программа, чего не хватает и насколько уверена проверка.';

  @override
  String get landing_comingSoon => 'Скоро';

  @override
  String get landing_comingSoonBody =>
      'Эта часть Benefits Digger сейчас разрабатывается. Загляните позже.';

  @override
  String get landing_notFoundTitle => 'Не удалось найти эту страницу';

  @override
  String get landing_notFoundBody =>
      'Страница, которую вы искали, перемещена или не существует.';

  @override
  String get landing_notFoundCta => 'На главную';

  @override
  String get landing_errorTitle => 'Что-то пошло не так';

  @override
  String get landing_errorBody =>
      'При загрузке страницы произошла непредвиденная ошибка. Повторите попытку; если ошибка повторяется, команда уже уведомлена.';

  @override
  String get landing_errorRetry => 'Повторить';

  @override
  String get landing_loading => 'Загрузка...';

  @override
  String get footer_disclaimer =>
      'Benefits Digger — независимый инструмент проверки. Он не аффилирован, не одобрен и не управляется федеральным правительством США или каким-либо штатным агентством. Окончательное право определяется агентством, которое управляет пособием.';

  @override
  String get footer_privacy => 'Конфиденциальность';

  @override
  String get footer_sources => 'Официальные источники';

  @override
  String get footer_about => 'О нас';

  @override
  String footer_copyright(String year) {
    return '$year Benefits Digger';
  }

  @override
  String get helpBot_title => 'Справка по этому приложению';

  @override
  String get helpBot_placeholder => 'Спросите, как пользоваться приложением…';

  @override
  String get helpBot_openLabel => 'Получить справку по приложению';

  @override
  String get helpBot_emptyState =>
      'Спросите, как пользоваться функцией, перейти на страницу или понять вопрос проверки. (Для вопросов о пособиях используйте основной чат.)';

  @override
  String get helpBot_streaming => 'Думаю…';

  @override
  String get helpBot_error =>
      'Не удалось связаться с помощником. Попробуйте через минуту.';

  @override
  String get helpBot_close => 'Закрыть справку';
}
