// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get nav_home => 'Trang chủ';

  @override
  String get nav_dashboard => 'Bảng điều khiển';

  @override
  String get nav_results => 'Kết quả';

  @override
  String get nav_whatif => 'Phòng thí nghiệm Giả định';

  @override
  String get nav_explorer => 'Trình duyệt chương trình';

  @override
  String get page_homeTitle => 'Benefits Digger';

  @override
  String get page_dashboardTitle => 'Bảng kế hoạch - Benefits Digger';

  @override
  String get page_resultsTitle => 'Kết quả - Benefits Digger';

  @override
  String get page_whatifTitle => 'Phòng thí nghiệm Giả định - Benefits Digger';

  @override
  String get page_explorerTitle => 'Trình duyệt chương trình - Benefits Digger';

  @override
  String get app_eyebrow => 'Benefits Digger';

  @override
  String get app_headline =>
      'Lập kế hoạch, so sánh và theo đuổi phúc lợi với bằng chứng chính thức từ chính phủ.';

  @override
  String get app_lede =>
      'Sàng lọc phúc lợi, so sánh các kịch bản giả định, duyệt danh mục chính thức và rời đi với một kế hoạch hành động rõ ràng dựa trên nguồn chính phủ.';

  @override
  String get home_startScreening => 'Bắt đầu sàng lọc';

  @override
  String get home_trustPrivate =>
      'Dữ liệu của bạn riêng tư và không bao giờ được lưu trữ.';

  @override
  String get home_trustSources =>
      'Dữ liệu lấy trực tiếp từ các chương trình chính phủ chính thức.';

  @override
  String get home_scope => 'Phạm vi';

  @override
  String get home_scopeBoth => 'Liên bang và tiểu bang';

  @override
  String get home_scopeFederal => 'Chỉ liên bang';

  @override
  String get home_scopeState => 'Chỉ tiểu bang';

  @override
  String get home_state => 'Tiểu bang';

  @override
  String get home_chooseState => 'Chọn một tiểu bang';

  @override
  String get home_breadth => 'Độ rộng';

  @override
  String get home_breadthFocused => 'Tập trung';

  @override
  String get home_breadthBalanced => 'Cân bằng';

  @override
  String get home_breadthBroad => 'Rộng';

  @override
  String get home_depth => 'Độ sâu';

  @override
  String get home_depthLight => 'Tổng quan';

  @override
  String get home_depthStandard => 'Tiêu chuẩn';

  @override
  String get home_depthDetailed => 'Chi tiết';

  @override
  String get home_categories => 'Danh mục phúc lợi';

  @override
  String get home_categoriesHint =>
      'Chọn ít nhất một danh mục để tìm các phúc lợi bạn có thể đủ điều kiện và cách nộp đơn.';

  @override
  String get home_selectAll => 'Chọn tất cả';

  @override
  String get home_clear => 'Xóa';

  @override
  String get home_apply => 'Áp dụng lựa chọn';

  @override
  String get home_reset => 'Đặt lại';

  @override
  String get home_refreshSources => 'Làm mới nguồn chính thức';

  @override
  String get home_questionFlow => 'Luồng câu hỏi';

  @override
  String get home_questionEmpty =>
      'Bắt đầu một phiên để khởi động bộ sàng lọc.';

  @override
  String get home_saveAnswer => 'Lưu câu trả lời';

  @override
  String get home_backQuestion => 'Quay lại câu hỏi trước';

  @override
  String get home_showResults => 'Hiển thị kết quả ngay';

  @override
  String get home_reviewQueue => 'Hàng chờ duyệt';

  @override
  String get home_refreshQueue => 'Làm mới hàng chờ';

  @override
  String get home_noReviewTasks => 'Chưa có nhiệm vụ duyệt nào.';

  @override
  String home_breadthApprox(String description, String count) {
    return '$description (~$count câu hỏi)';
  }

  @override
  String home_depthApprox(String description) {
    return '$description';
  }

  @override
  String get home_noMoreQuestions =>
      'Không còn câu hỏi nào trong hàng chờ. Kết quả đã sẵn sàng.';

  @override
  String get home_noProgramsFound =>
      'Không tìm thấy chương trình phúc lợi nào phù hợp với lựa chọn của bạn. Hãy thử mở rộng danh mục hoặc chọn tiểu bang khác.';

  @override
  String get home_selectCategory =>
      'Chọn ít nhất một danh mục trước khi áp dụng lựa chọn của bạn.';

  @override
  String get home_chooseScope =>
      'Chọn phạm vi sàng lọc trước khi bắt đầu phiên.';

  @override
  String get home_chooseStateMsg =>
      'Vui lòng chọn một tiểu bang trước khi bắt đầu sàng lọc tiểu bang hoặc kết hợp.';

  @override
  String get home_chooseOne => 'Chọn một';

  @override
  String get home_searching => 'Đang tìm kiếm...';

  @override
  String get home_creatingSession => 'Đang tạo phiên...';

  @override
  String get home_creatingSessionState =>
      'Đang tạo phiên và tải phúc lợi tiểu bang...';

  @override
  String home_sessionLive(String sessionId) {
    return 'Phiên $sessionId đang hoạt động.';
  }

  @override
  String home_sessionError(String error) {
    return 'Không thể bắt đầu phiên: $error';
  }

  @override
  String get home_answerRequired =>
      'Vui lòng chọn một câu trả lời trước khi tiếp tục.';

  @override
  String get home_answerSaved => 'Đã lưu câu trả lời.';

  @override
  String home_answerError(String error) {
    return 'Không thể lưu câu trả lời: $error';
  }

  @override
  String get home_resultsRefreshed => 'Đã làm mới kết quả.';

  @override
  String get home_refreshingOfficialSources =>
      'Đang làm mới nguồn chính thức...';

  @override
  String get home_officialSourcesRefreshed => 'Đã làm mới nguồn chính thức.';

  @override
  String home_syncSummary(String added, String crawled) {
    return 'Đã làm mới nguồn chính thức. Đã thu thập $crawled trang chương trình và thêm $added nguồn trang chính phủ.';
  }

  @override
  String home_syncFailed(String error) {
    return 'Đồng bộ thất bại: $error';
  }

  @override
  String home_sensitivity(String level) {
    return 'Độ nhạy $level';
  }

  @override
  String get home_sourceLabel => 'Nguồn';

  @override
  String home_reviewTaskMeta(String score, String diffType) {
    return '$diffType · mức độ $score';
  }

  @override
  String get home_adminKey => 'Khóa truy cập quản trị';

  @override
  String get home_adminPlaceholder => 'Chỉ cần khi bật bảo vệ quản trị';

  @override
  String get home_adminHelp =>
      'Chỉ dùng cho hàng chờ duyệt và làm mới nguồn. Lưu trong tab trình duyệt này cho đến khi bạn xóa.';

  @override
  String get home_saveKey => 'Lưu khóa';

  @override
  String get home_clearKey => 'Xóa khóa';

  @override
  String get home_adminSaved => 'Đã lưu khóa quản trị cho tab trình duyệt này.';

  @override
  String get home_adminCleared => 'Đã xóa khóa quản trị.';

  @override
  String get home_lifeIntakePill => 'Tiếp nhận sự kiện cuộc sống';

  @override
  String get home_lifeIntakeTitle => 'Mô tả tình huống của bạn';

  @override
  String get home_lifeIntakeLabel =>
      'Hãy kể bằng lời của bạn về khó khăn đang gặp';

  @override
  String get home_lifeIntakePlaceholder =>
      'Ví dụ: Tôi mất việc, đang nợ tiền nhà, và đang tìm hiểu xem có hỗ trợ thực phẩm và y tế không.';

  @override
  String get home_lifeIntakeHint =>
      'Bạn không cần phân loại vấn đề trước. Chúng tôi sẽ chuyển mô tả của bạn thành các danh mục đề xuất, các thông tin có khả năng và các câu hỏi tiếp theo quan trọng nhất.';

  @override
  String get home_lifeIntakeAnalyze => 'Phân tích tình huống của tôi';

  @override
  String get home_lifeIntakeClear => 'Xóa nội dung';

  @override
  String get home_lifeSummaryTitle => 'Tôi đã nghe được';

  @override
  String get home_lifeSuggestedScope => 'Phạm vi đề xuất';

  @override
  String get home_lifeSuggestedState => 'Tiểu bang đề xuất';

  @override
  String get home_lifeCategoriesTitle => 'Lĩnh vực phúc lợi đề xuất';

  @override
  String get home_lifeFactsTitle => 'Thông tin có cấu trúc đến nay';

  @override
  String get home_lifeMissingTitle => 'Vẫn nên hỏi thêm';

  @override
  String get home_lifeApply => 'Sử dụng các đề xuất này trong bộ sàng lọc';

  @override
  String get home_lifeStart => 'Bắt đầu sàng lọc từ trò chuyện';

  @override
  String get home_lifeChatTitle => 'Trợ lý phúc lợi';

  @override
  String get home_lifeAssistantName => 'Zobo';

  @override
  String get home_lifeChatLauncherLabel => 'Mở trợ lý Zobo';

  @override
  String get home_lifeChatClose => 'Thu gọn trợ lý';

  @override
  String get home_lifeChatMinimize => 'Thu gọn';

  @override
  String get home_lifeChatHint =>
      'Hãy kể tình huống của bạn, và tôi sẽ hỏi từng câu hỏi tiếp theo ngắn gọn.';

  @override
  String get home_lifeChatEmpty =>
      'Hãy bắt đầu bằng cách mô tả những gì bạn đang gặp, tôi sẽ chuyển nó thành lĩnh vực phúc lợi và câu hỏi tiếp theo.';

  @override
  String get home_lifeChatInputLabel => 'Trả lời trợ lý';

  @override
  String get home_lifeChatWelcome =>
      'Xin chào. Tôi là Zobo. Hãy kể đôi điều về tình hình của bạn, tôi sẽ giúp sắp xếp các bước tiếp theo.';

  @override
  String get home_lifeChatWelcomeSession =>
      'Xin chào. Tôi là Zobo. Tôi có thể đồng hành cùng bạn khi xem phiên này. Hãy yêu cầu tôi giải thích kết quả, thông tin còn thiếu hoặc bước tiếp theo.';

  @override
  String get home_lifeChatPlaceholder =>
      'Thử: Tôi mất việc, nợ tiền nhà, và cần hỗ trợ thực phẩm.';

  @override
  String get home_lifeChatPlaceholderYesNo =>
      'Một câu “có” hoặc “không” ngắn là đủ ở đây.';

  @override
  String get home_lifeChatPlaceholderState =>
      'Trả lời bằng tên tiểu bang như CA, California hoặc New York.';

  @override
  String get home_lifeChatSend => 'Trả lời';

  @override
  String get home_lifeChatSending => 'Đang gửi...';

  @override
  String get home_lifeChatQuickReplies => 'Trả lời nhanh';

  @override
  String get home_lifeChatNavigate => 'Bạn cũng có thể đến';

  @override
  String get home_navAction_use_screener => 'Dùng bộ sàng lọc';

  @override
  String get home_navAction_start_screening => 'Bắt đầu sàng lọc';

  @override
  String get home_navAction_open_explorer => 'Mở Trình duyệt chương trình';

  @override
  String get home_navAction_open_results => 'Mở Kết quả';

  @override
  String get home_navAction_open_dashboard => 'Mở Bảng điều khiển';

  @override
  String get home_lifeChatUserLabel => 'Bạn';

  @override
  String get home_lifeChatStatusEmpty => 'Hãy kể tình huống để bắt đầu.';

  @override
  String get home_lifeChatStatusWaitingDetails =>
      'Hãy kể thêm một chút để tôi định hướng đúng.';

  @override
  String get home_lifeChatStatusThinking =>
      'Đang suy nghĩ về cập nhật của bạn...';

  @override
  String get home_lifeChatStatusReady =>
      'Tôi đã có một câu hỏi tiếp theo ngắn.';

  @override
  String get home_lifeChatStatusDone => 'Tôi đã có đủ thông tin để tiếp tục.';

  @override
  String get home_lifeNoCategories => 'Chưa suy ra lĩnh vực phúc lợi nào.';

  @override
  String get home_lifeNoFacts => 'Chưa ghi nhận thông tin có cấu trúc.';

  @override
  String get home_lifeNoMissing =>
      'Hiện không thiếu câu hỏi tiếp theo quan trọng nào.';

  @override
  String get home_lifeApplyDone =>
      'Đã sao chép các đề xuất của trợ lý vào bộ sàng lọc.';

  @override
  String get home_lifeStarted => 'Đã bắt đầu sàng lọc từ đề xuất của trợ lý.';

  @override
  String get home_lifeDescriptionRequired =>
      'Hãy kể tình huống để tôi giúp được bạn.';

  @override
  String get home_lifeAnalyzing => 'Đang phân tích tình huống...';

  @override
  String get home_lifeAnalyzed => 'Đã cập nhật tiếp nhận sự kiện cuộc sống.';

  @override
  String home_lifeInterpretError(String error) {
    return 'Không thể phân tích nội dung: $error';
  }

  @override
  String get home_lifeProbeUpdated => 'Đã thêm chi tiết tiếp theo.';

  @override
  String home_lifeProbeError(String error) {
    return 'Không thể xử lý câu hỏi tiếp theo đó: $error';
  }

  @override
  String get results_title => 'Kết quả';

  @override
  String results_liveMatches(String count) {
    return '$count kết quả khớp trực tiếp';
  }

  @override
  String get results_print => 'In';

  @override
  String get results_redoScreening => 'Sàng lọc lại';

  @override
  String get results_downloadPdf => 'Tải PDF';

  @override
  String get results_scrollUp => 'Cuộn lên';

  @override
  String get results_scrollDown => 'Cuộn xuống';

  @override
  String get results_generatingPdf => 'Đang tạo...';

  @override
  String get results_noSession =>
      'Không có phiên đang hoạt động. Hãy <a href=\"/\">bắt đầu sàng lọc</a> trước.';

  @override
  String get results_federalTitle => 'Kết quả liên bang';

  @override
  String get results_stateTitle => 'Kết quả tiểu bang';

  @override
  String get results_noFederal =>
      'Chưa có kết quả liên bang. Trả lời thêm câu hỏi để cải thiện kết quả.';

  @override
  String get results_noState =>
      'Chưa có kết quả tiểu bang. Trả lời thêm câu hỏi để cải thiện kết quả.';

  @override
  String get results_federalOnlyFinished =>
      'Đây là phiên chỉ liên bang nên không hiển thị kết quả tiểu bang.';

  @override
  String get results_federalOnlyHidden =>
      'Kết quả tiểu bang bị ẩn khi chọn phạm vi Chỉ liên bang.';

  @override
  String results_loadError(String error) {
    return 'Không thể tải kết quả: $error';
  }

  @override
  String get dashboard_title => 'Bảng kế hoạch';

  @override
  String get dashboard_noSession => 'Không có phiên đang hoạt động';

  @override
  String get dashboard_empty =>
      'Chưa có phiên đang hoạt động. Bắt đầu một phiên để mở khóa tóm tắt kế hoạch, các bước hành động và phân tích thông tin còn thiếu.';

  @override
  String get dashboard_goHome => 'Về Trang chủ để bắt đầu phiên';

  @override
  String get dashboard_downloadPdf => 'Tải PDF';

  @override
  String get dashboard_generatingPdf => 'Đang tạo...';

  @override
  String get dashboard_benefitStack => 'Bộ phúc lợi';

  @override
  String get dashboard_missingFacts => 'Thông tin còn thiếu hàng đầu';

  @override
  String get dashboard_actions => 'Bước hành động đề xuất';

  @override
  String get dashboard_sourceHub => 'Trung tâm nguồn chính thức';

  @override
  String get dashboard_docChecklist => 'Danh sách tài liệu';

  @override
  String get dashboard_planningNotes => 'Ghi chú kế hoạch';

  @override
  String get dashboard_likelyPrograms => 'Chương trình có khả năng';

  @override
  String get dashboard_possiblePrograms => 'Chương trình có thể';

  @override
  String get dashboard_answeredQuestions => 'Câu hỏi đã trả lời';

  @override
  String get dashboard_avgRuleCoverage => 'Mức bao phủ quy tắc trung bình';

  @override
  String get dashboard_estMonthly => 'Phúc lợi hàng tháng ước tính';

  @override
  String get dashboard_noBenefitStack => 'Chưa có bộ phúc lợi nào.';

  @override
  String get dashboard_noMissingFacts =>
      'Hiện không có điểm nóng thông tin thiếu.';

  @override
  String get dashboard_noActions => 'Chưa có bước hành động nào.';

  @override
  String get dashboard_noSourceHub => 'Chưa có trung tâm nguồn chính thức nào.';

  @override
  String get dashboard_noDocuments =>
      'Chưa cần tài liệu nào. Hoàn thành sàng lọc để xem cần gì.';

  @override
  String get dashboard_noPlanningNotes =>
      'Ghi chú kế hoạch sẽ xuất hiện sau khi phiên có kết quả.';

  @override
  String dashboard_loadError(String error) {
    return 'Không thể tải kế hoạch: $error';
  }

  @override
  String get dashboard_noSessionLink =>
      'Không có phiên đang hoạt động. Hãy <a href=\"/\">bắt đầu sàng lọc</a> trước.';

  @override
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  ) {
    return 'Độ rộng $breadthLabel ($breadthPercent%) · Độ sâu $depthLabel ($depthPercent%)';
  }

  @override
  String get dashboard_likely => 'có khả năng';

  @override
  String get dashboard_possible => 'có thể';

  @override
  String get dashboard_noTopPrograms => 'Chưa có chương trình hàng đầu.';

  @override
  String dashboard_confidence(String value) {
    return 'độ tin cậy $value/100';
  }

  @override
  String dashboard_affects(String count) {
    return 'Ảnh hưởng đến $count chương trình.';
  }

  @override
  String dashboard_neededFor(String programs) {
    return 'Cần cho: $programs';
  }

  @override
  String get whatif_title => 'Phòng thí nghiệm Giả định';

  @override
  String get whatif_pill => 'So sánh kịch bản';

  @override
  String get whatif_noSession =>
      'Không có phiên đang hoạt động. Hãy <a href=\"/\">bắt đầu sàng lọc</a> trước.';

  @override
  String get whatif_quickStartIntro =>
      'Không có phiên đang hoạt động. Bắt đầu một phiên ở đây để chạy kịch bản:';

  @override
  String get whatif_scopeLabel => 'Phạm vi';

  @override
  String get whatif_stateLabel => 'Tiểu bang';

  @override
  String get whatif_categoriesLabel => 'Danh mục phúc lợi';

  @override
  String get whatif_startSession => 'Bắt đầu phiên';

  @override
  String get whatif_description =>
      'Chạy so sánh kịch bản mà không thay đổi câu trả lời đã lưu. Các thiết lập sẵn này cho thấy tập kết quả thay đổi ra sao khi một thực tế cuộc sống thay đổi.';

  @override
  String get whatif_startThenRun => 'Bắt đầu phiên, sau đó chạy kịch bản.';

  @override
  String get whatif_noResult => 'Không có kết quả kịch bản trả về.';

  @override
  String get whatif_scenarioCompare => 'So sánh kịch bản';

  @override
  String get whatif_likelyDelta => 'Chênh lệch có khả năng';

  @override
  String get whatif_possibleDelta => 'Chênh lệch có thể';

  @override
  String get whatif_federalDelta => 'Chênh lệch liên bang';

  @override
  String get whatif_stateDelta => 'Chênh lệch tiểu bang';

  @override
  String get whatif_newPrograms => 'Chương trình mới hoặc được mở khóa';

  @override
  String get whatif_improvedPrograms => 'Chương trình cải thiện';

  @override
  String get whatif_noNewMatches =>
      'Không có kết quả tích cực mới trong kịch bản này.';

  @override
  String get whatif_noImprovements =>
      'Không có cải thiện trạng thái trong kịch bản này.';

  @override
  String get whatif_toStatus => 'đến';

  @override
  String get whatif_startFirst => 'Bắt đầu một phiên trước khi chạy kịch bản.';

  @override
  String get whatif_updated => 'Đã cập nhật so sánh kịch bản.';

  @override
  String whatif_failed(String error) {
    return 'So sánh kịch bản thất bại: $error';
  }

  @override
  String get explorer_title => 'Trình duyệt chương trình';

  @override
  String get explorer_refresh => 'Làm mới Trình duyệt';

  @override
  String get explorer_description =>
      'Trình duyệt kết hợp mô tả nhu cầu bằng tiếng Anh thông thường với danh mục chính thức. Khi được cấu hình, có thể dùng Gemini để diễn giải, và luôn lùi về khớp cục bộ có cơ sở.';

  @override
  String get explorer_scope => 'Phạm vi';

  @override
  String get explorer_state => 'Tiểu bang';

  @override
  String get explorer_describe => 'Mô tả nhu cầu của bạn';

  @override
  String get explorer_describePlaceholder =>
      'Ví dụ: Tôi mất một thành viên gia đình ở California và cần hỗ trợ chi phí tang lễ và phúc lợi cho thân nhân.';

  @override
  String get explorer_search => 'Tìm theo từ khóa chính xác';

  @override
  String get explorer_placeholder =>
      'Thử nghỉ hưu, khuyết tật, tang lễ, cựu chiến binh...';

  @override
  String get explorer_submit => 'Chạy tìm kiếm kết hợp';

  @override
  String get explorer_empty =>
      'Dùng trình duyệt để xem danh mục chương trình chính thức hiện hành.';

  @override
  String get explorer_noMatch =>
      'Không có chương trình nào khớp. Hãy mô tả rộng hơn hoặc bỏ một bộ lọc.';

  @override
  String get explorer_minChars =>
      'Nhập ít nhất 2 ký tự để tìm theo từ khóa chính xác.';

  @override
  String get explorer_openOfficial => 'Mở trang chính phủ';

  @override
  String explorer_failed(String error) {
    return 'Trình duyệt thất bại: $error';
  }

  @override
  String get explorer_methodGemini => 'Gemini + danh mục có cơ sở';

  @override
  String get explorer_methodHeuristic => 'Danh mục có cơ sở + diễn giải cục bộ';

  @override
  String get explorer_interpretationTitle => 'Diễn giải tìm kiếm';

  @override
  String get explorer_needAreas => 'Lĩnh vực nhu cầu';

  @override
  String get explorer_stateLabel => 'Tiểu bang:';

  @override
  String get explorer_searchTerms => 'Từ khóa tìm kiếm:';

  @override
  String explorer_score(String score) {
    return 'Điểm $score';
  }

  @override
  String get explorer_browseSummary =>
      'Đang duyệt danh mục chương trình chính thức.';

  @override
  String get explorer_localizedSummary =>
      'Hiển thị cách nhu cầu của bạn được diễn giải từ danh mục cục bộ có cơ sở.';

  @override
  String get card_confidence => 'Độ tin cậy';

  @override
  String get card_clickExpand => '(nhấp để mở rộng)';

  @override
  String get card_eligibilityCriteria => 'Tiêu chí đủ điều kiện';

  @override
  String get card_criteriaMet => 'đạt';

  @override
  String get card_met => 'đạt';

  @override
  String get card_notMet => 'chưa đạt';

  @override
  String get card_unanswered => 'chưa trả lời';

  @override
  String get card_amount => 'Số tiền';

  @override
  String get card_amountEstimated => ' (ước tính)';

  @override
  String get card_whyMatched => 'Vì sao khớp';

  @override
  String get card_noMatchedReasons => 'Chưa có lý do khớp.';

  @override
  String get card_missingFacts => 'Vẫn còn thiếu';

  @override
  String get card_noMissingFacts => 'Lần này không thiếu thông tin nào.';

  @override
  String get card_documentsNeeded => 'Tài liệu cần thiết';

  @override
  String get card_noDocuments => 'Chương trình này chưa có danh sách tài liệu.';

  @override
  String get card_dataGathered =>
      'Dữ liệu lấy từ trang web chính phủ chính thức';

  @override
  String get card_noSources => 'Chưa đính kèm nguồn chính phủ chính thức.';

  @override
  String get card_howToGet => 'Cách nhận phúc lợi này';

  @override
  String get card_noApplicationPath =>
      'Chưa có đường nộp đơn chính thức cho kết quả này.';

  @override
  String get card_openOfficial => 'Mở trang chính phủ';

  @override
  String get card_useSourcesBelow => 'Dùng các nguồn chính thức bên dưới.';

  @override
  String get card_notAvailable => 'Không khả dụng';

  @override
  String get card_unknownAgency => 'Cơ quan không xác định';

  @override
  String get card_noSummary => 'Chưa có tóm tắt.';

  @override
  String get card_noBreakdown => 'Chưa có chi tiết.';

  @override
  String card_verified(String date) {
    return 'đã xác minh $date';
  }

  @override
  String get category_children_families => 'Trẻ em và gia đình';

  @override
  String get category_death => 'Tử vong';

  @override
  String get category_disabilities => 'Khuyết tật';

  @override
  String get category_disasters => 'Thảm họa';

  @override
  String get category_education => 'Giáo dục';

  @override
  String get category_food => 'Thực phẩm';

  @override
  String get category_general => 'Chung';

  @override
  String get category_health => 'Sức khỏe';

  @override
  String get category_housing_utilities => 'Nhà ở và tiện ích';

  @override
  String get category_jobs_unemployment => 'Việc làm và thất nghiệp';

  @override
  String get category_military_veterans => 'Quân nhân và cựu chiến binh';

  @override
  String get category_retirement_seniors => 'Hưu trí và người cao tuổi';

  @override
  String get category_welfare_cash_assistance => 'Phúc lợi và hỗ trợ tiền mặt';

  @override
  String get breadth_focused =>
      'Tập trung giữ buổi sàng lọc ngắn và nhấn vào tín hiệu chương trình mạnh nhất.';

  @override
  String get breadth_balanced =>
      'Cân bằng khám phá một số chương trình khả dĩ vừa phải trước khi dừng.';

  @override
  String get breadth_broad =>
      'Rộng tiếp tục khám phá lâu hơn để bao quát nhiều chương trình hơn.';

  @override
  String get depth_light =>
      'Tổng quan giữ câu hỏi rộng, thường là có/không hoặc gợi ý theo danh mục đơn giản.';

  @override
  String get depth_standard =>
      'Tiêu chuẩn pha trộn các câu hỏi sàng lọc rộng với một số câu hỏi cụ thể hơn.';

  @override
  String get depth_detailed =>
      'Chi tiết hỏi số tiền, ngày, thời lượng và các sự kiện chính xác khi có.';

  @override
  String get scenario_limitedIncome => 'Nếu tôi có thu nhập và tài sản hạn chế';

  @override
  String get scenario_limitedIncomeDesc =>
      'Hữu ích cho hỗ trợ tiền mặt hoặc lập kế hoạch kiểu SSI.';

  @override
  String get scenario_disability => 'Nếu tôi có khuyết tật đủ điều kiện';

  @override
  String get scenario_disabilityDesc =>
      'Kiểm tra các đường dẫn liên quan khuyết tật và quy tắc giới hạn lao động.';

  @override
  String get scenario_military => 'Nếu tôi từng tại ngũ';

  @override
  String get scenario_militaryDesc =>
      'Kiểm tra lịch sử phục vụ có mở phúc lợi cựu chiến binh không.';

  @override
  String get scenario_familyDeath => 'Nếu gần đây có người thân qua đời';

  @override
  String get scenario_familyDeathDesc =>
      'Khám phá hỗ trợ thân nhân và tang lễ.';

  @override
  String get status_likely_eligible => 'có khả năng đủ điều kiện';

  @override
  String get status_possibly_eligible => 'có thể đủ điều kiện';

  @override
  String get status_unclear => 'Không rõ';

  @override
  String get status_likely_ineligible => 'có khả năng không đủ điều kiện';

  @override
  String get sensitivity_low => 'thấp';

  @override
  String get sensitivity_medium => 'trung bình';

  @override
  String get sensitivity_high => 'cao';

  @override
  String get certainty_rule_coverage => 'mức bao phủ quy tắc';

  @override
  String get certainty_source_authority => 'thẩm quyền nguồn';

  @override
  String get certainty_source_freshness => 'độ mới của nguồn';

  @override
  String get certainty_program_determinism => 'tính xác định của chương trình';

  @override
  String get certainty_amount_determinism => 'tính xác định của số tiền';

  @override
  String get intake_scope_federal => 'Hiện chỉ liên bang';

  @override
  String get intake_scope_state => 'Sàng lọc theo tiểu bang';

  @override
  String get intake_scope_both => 'Sàng lọc liên bang và tiểu bang';

  @override
  String get intake_fact_state_code => 'Tiểu bang đã chọn';

  @override
  String get intake_fact_applicant_income => 'Thu nhập và tài sản hạn chế';

  @override
  String get intake_fact_applicant_disability =>
      'Khuyết tật hoặc bệnh đủ điều kiện';

  @override
  String get intake_fact_applicant_ability_to_work =>
      'Không thể làm việc một năm trở lên';

  @override
  String get intake_fact_applicant_served_in_active_military =>
      'Phục vụ tại ngũ trong quân đội';

  @override
  String get intake_fact_applicant_service_disability =>
      'Khuyết tật do nghĩa vụ quân sự';

  @override
  String get intake_fact_applicant_dolo => 'Người thân mới qua đời';

  @override
  String get intake_fact_deceased_died_of_COVID =>
      'Tử vong liên quan đến COVID';

  @override
  String get intake_fact_deceased_death_location_is_US =>
      'Tử vong xảy ra tại Hoa Kỳ';

  @override
  String get intake_fact_applicant_paid_into_SS =>
      'Đã đi làm và đóng thuế An sinh xã hội (Social Security)';

  @override
  String get intake_fact_recent_job_loss => 'Mới mất việc hoặc giảm giờ làm';

  @override
  String get intake_fact_housing_urgency =>
      'Áp lực khẩn cấp về nhà ở hoặc tiện ích';

  @override
  String get intake_fact_food_insecurity => 'Khó khăn về thực phẩm';

  @override
  String get intake_fact_current_student => 'Đang đi học hoặc đào tạo nghề';

  @override
  String get intake_fact_has_children =>
      'Có con hoặc người phụ thuộc trong hộ gia đình';

  @override
  String get intake_fact_is_62_or_older => 'Từ 62 tuổi trở lên';

  @override
  String get intake_fact_recent_disaster_impact => 'Mới chịu tác động thảm họa';

  @override
  String get intake_fact_needs_health_coverage =>
      'Cần bảo hiểm y tế hoặc hỗ trợ y tế';

  @override
  String get intake_fact_annual_income_amount => 'Thu nhập năm xấp xỉ';

  @override
  String get docType_required => 'bắt buộc';

  @override
  String get docType_recommended => 'khuyến nghị';

  @override
  String get reviewStatus_open => 'đang mở';

  @override
  String get reviewDiff_eligibility => 'đủ điều kiện';

  @override
  String get reviewDiff_structural => 'cấu trúc';

  @override
  String get reviewDiff_content => 'nội dung';

  @override
  String get server_step_startState =>
      'Bắt đầu trên trang dịch vụ xã hội chính thức của tiểu bang.';

  @override
  String get server_step_useStateTools =>
      'Dùng công cụ phúc lợi hoặc trang chương trình chính thức của tiểu bang để chọn phúc lợi cần thiết.';

  @override
  String get server_step_followStateInstructions =>
      'Làm theo hướng dẫn chính thức của tiểu bang về tài liệu, liên hệ văn phòng địa phương hoặc nộp trực tuyến.';

  @override
  String get server_step_reviewEligibility =>
      'Xem nguồn đủ điều kiện chính thức của chính phủ dùng cho kết quả này.';

  @override
  String get server_step_openOfficial =>
      'Mở trang chính phủ để bắt đầu hoặc tiếp tục đơn.';

  @override
  String get server_step_useSamePage =>
      'Dùng cùng trang chính thức cho tài liệu cần thiết, kiểm tra trạng thái hoặc liên hệ cơ quan.';

  @override
  String server_note_strongMatches(String plural, String count) {
    return 'Bạn đã có $count kết quả khớp mạnh$plural để theo đuổi trên các trang chính phủ chính thức.';
  }

  @override
  String server_note_possibleMatches(String plural, String count) {
    return 'Bạn có $count kết quả khả thi$plural; trả lời thêm vài câu sẽ làm rõ thêm.';
  }

  @override
  String server_note_biggestGap(String label) {
    return 'Khoảng trống thông tin lớn nhất hiện nay là: $label.';
  }

  @override
  String get server_note_chooseState =>
      'Chọn một tiểu bang để mở khóa các đường phúc lợi tiểu bang chính thức.';

  @override
  String get admin_invalidKey =>
      'Khóa quản trị đã lưu bị từ chối. Cập nhật rồi thử lại.';

  @override
  String get admin_requiredKey =>
      'Cần khóa quản trị. Nhập vào mục Khóa truy cập quản trị để dùng các thao tác duyệt và đồng bộ.';

  @override
  String errors_requestFailed(String status) {
    return 'Yêu cầu thất bại với mã trạng thái $status.';
  }

  @override
  String get errors_genericTitle => 'Đã xảy ra sự cố';

  @override
  String get errors_generic => 'Đã xảy ra sự cố. Vui lòng thử lại.';

  @override
  String get errors_validation =>
      'Không thể xử lý yêu cầu — hãy làm mới và thử lại.';

  @override
  String get errors_rateLimited =>
      'Quá nhiều yêu cầu. Vui lòng đợi một phút rồi thử lại.';

  @override
  String get errors_server =>
      'Dịch vụ đang gặp trục trặc. Vui lòng thử lại sau.';

  @override
  String get errors_network => 'Không kết nối được máy chủ. Hãy kiểm tra mạng.';

  @override
  String get errors_timeout => 'Yêu cầu hết thời gian. Vui lòng thử lại.';

  @override
  String get errors_auth => 'Bạn cần đăng nhập để thực hiện việc đó.';

  @override
  String get errors_notFound =>
      'Chúng tôi không tìm thấy nội dung bạn đang tìm.';

  @override
  String get errors_tryAgain => 'Thử lại';

  @override
  String results_federalSection(int count) {
    return 'Chương trình liên bang ($count)';
  }

  @override
  String results_stateSection(int count) {
    return 'Chương trình tiểu bang ($count)';
  }

  @override
  String get results_emptyFederal =>
      'Không có chương trình liên bang nào khớp. Trả lời thêm câu hỏi hoặc mở rộng phạm vi sàng lọc.';

  @override
  String get results_emptyState =>
      'Chưa có chương trình tiểu bang nào khớp. Thêm tiểu bang trong sàng lọc để xem chương trình địa phương.';

  @override
  String get results_viewActionPlan => 'Xem kế hoạch hành động';

  @override
  String get results_couldNotLoad => 'Không thể tải kết quả của bạn.';

  @override
  String get dashboard_couldNotLoad => 'Không thể tải kế hoạch hành động.';

  @override
  String get dashboard_applyLinkUnavailable =>
      'Liên kết nộp đơn không khả dụng — hãy liên hệ cơ quan địa phương.';

  @override
  String get dashboard_apply => 'Nộp đơn';

  @override
  String dashboard_step(int n) {
    return 'Bước $n';
  }

  @override
  String get dashboard_emptyStack =>
      'Chúng tôi chưa có bộ phúc lợi cho bạn. Hoàn thành sàng lọc để bổ sung.';

  @override
  String get dashboard_emptyActions =>
      'Chưa có hành động kế tiếp — trả lời thêm vài câu để có kế hoạch riêng.';

  @override
  String get dashboard_emptyDocuments => 'Chưa cần thu thập tài liệu nào.';

  @override
  String get dashboard_emptyNotes =>
      'Chưa có ghi chú thêm cho tình huống của bạn.';

  @override
  String get dashboard_emptySources => 'Chưa có liên kết nguồn nào.';

  @override
  String get dashboard_helpNarrowDown => 'Giúp chúng tôi thu hẹp phạm vi';

  @override
  String get dashboard_missingFactsHint =>
      'Trả lời chúng để có kết quả khớp chính xác hơn.';

  @override
  String get dashboard_resumeScreening => 'Tiếp tục sàng lọc';

  @override
  String get dashboard_documentsTitle => 'Tài liệu cần chuẩn bị';

  @override
  String get dashboard_notesTitle => 'Ghi chú kế hoạch';

  @override
  String get dashboard_sourceHubTitle => 'Trung tâm nguồn chính thức';

  @override
  String get dashboard_stackTitle => 'Bộ phúc lợi của bạn';

  @override
  String get dashboard_actionsTitle => 'Bước tiếp theo';

  @override
  String get status_likelyEligible => 'Có khả năng đủ điều kiện';

  @override
  String get status_possiblyEligible => 'Có thể đủ điều kiện';

  @override
  String get status_likelyIneligible => 'Có lẽ không';

  @override
  String get dynamic_question_dob => 'Ngày sinh của bạn?';

  @override
  String get dynamic_hint_dobExample => 'Ví dụ: 1990-01-20';

  @override
  String get dynamic_question_paidIntoSS =>
      'Bạn từng đi làm và đóng thuế An sinh xã hội Hoa Kỳ (Social Security) chưa?';

  @override
  String get dynamic_question_limitedIncome =>
      'Bạn có thu nhập và tài sản hạn chế không?';

  @override
  String get dynamic_hint_limitedIncome =>
      'Đây là câu hỏi sàng lọc rộng, không phải kết luận cuối cùng.';

  @override
  String get dynamic_question_disability =>
      'Bạn có khuyết tật hoặc bệnh đủ điều kiện không?';

  @override
  String get dynamic_question_unableToWork =>
      'Bạn không thể làm việc từ một năm trở lên do khuyết tật?';

  @override
  String get dynamic_question_activeMilitary =>
      'Bạn từng tại ngũ trong lục quân, hải quân hoặc không quân không?';

  @override
  String get dynamic_question_serviceDisabilityDetailed =>
      'Khuyết tật của bạn do nghĩa vụ tại ngũ gây ra hoặc làm trầm trọng thêm?';

  @override
  String get dynamic_question_familyDeathDetailed =>
      'Gần đây bạn có người thân ruột thịt qua đời không?';

  @override
  String get dynamic_question_dateOfDeath => 'Ngày qua đời?';

  @override
  String get dynamic_hint_dateOfDeath =>
      'Nếu không nhớ chính xác, hãy nhập ngày gần đúng.';

  @override
  String get dynamic_question_covidDeath =>
      'Cái chết có liên quan đến COVID-19 không?';

  @override
  String get dynamic_question_deathInUs => 'Người đó qua đời tại Hoa Kỳ?';

  @override
  String get dynamic_hint_deathInUs =>
      'Bao gồm Puerto Rico và các lãnh thổ Hoa Kỳ.';

  @override
  String get dynamic_question_householdIncome =>
      'Thu nhập hộ gia đình hàng năm xấp xỉ?';

  @override
  String get dynamic_hint_householdIncome =>
      'Tham khảo: ngưỡng nghèo liên bang 2024 là \$15,060/năm cho hộ một người. Nhiều chương trình dùng 130–200% mức này.';

  @override
  String get dynamic_question_disabilityType =>
      'Loại khuyết tật hoặc tình trạng của bạn?';

  @override
  String get dynamic_hint_disabilityType =>
      'Chọn tất cả các mục phù hợp. Theo quy tắc SSA, khuyết tật đủ điều kiện phải hạn chế đáng kể khả năng làm các công việc cơ bản.';

  @override
  String get dynamic_question_monthsUnableToWork =>
      'Tình trạng của bạn đã ngăn bạn làm việc bao nhiêu tháng?';

  @override
  String get dynamic_hint_monthsUnableToWork =>
      'SSDI yêu cầu không thể tham gia hoạt động lao động đáng kể trong ít nhất 12 tháng liên tục (42 U.S.C. § 423(d)(1)(A)).';

  @override
  String get dynamic_question_approxAge => 'Tuổi xấp xỉ của bạn?';

  @override
  String get dynamic_hint_approxAge => 'Tuổi áng chừng đủ cho kiểm tra nhanh.';

  @override
  String get dynamic_question_exactDob => 'Ngày sinh chính xác của bạn?';

  @override
  String get dynamic_hint_exactDob =>
      'Tuổi nghỉ hưu đầy đủ khác nhau: 66 cho người sinh 1943–1954, tăng dần đến 67 cho người sinh từ 1960 trở đi (42 U.S.C. § 416(l)).';

  @override
  String get dynamic_question_militaryVeteran =>
      'Bạn có phải cựu chiến binh không?';

  @override
  String get dynamic_hint_activeMilitary =>
      'Phúc lợi VA yêu cầu phục vụ tại ngũ. Phục vụ Dự bị/Vệ binh Quốc gia có thể đủ điều kiện nếu được kích hoạt theo lệnh liên bang (38 U.S.C. § 101(2)).';

  @override
  String get dynamic_question_serviceDisabilitySimple =>
      'Khuyết tật của bạn có liên quan đến nghĩa vụ quân sự không?';

  @override
  String get dynamic_hint_serviceDisabilityDetailed =>
      'Bồi thường khuyết tật của VA yêu cầu tình trạng liên quan đến nghĩa vụ với mức xếp hạng ít nhất 10% (38 U.S.C. § 1110).';

  @override
  String get dynamic_question_familyDeathSimple =>
      'Gần đây bạn có mất người thân không?';

  @override
  String get dynamic_hint_familyDeathDetailed =>
      'Đủ điều kiện phúc lợi thân nhân tùy thuộc vào quan hệ với người mất và lịch sử lao động (42 U.S.C. § 402).';

  @override
  String get dynamic_question_stateCode =>
      'Bạn muốn nhận phúc lợi tiểu bang nào?';

  @override
  String get dynamic_hint_stateCode =>
      'Phúc lợi tiểu bang khác nhau giữa các tiểu bang và tách khỏi kết quả liên bang.';

  @override
  String get dynamic_option_yes => 'Có';

  @override
  String get dynamic_option_no => 'Không';

  @override
  String get dynamic_option_physicalDisability => 'Khuyết tật thể chất';

  @override
  String get dynamic_option_cognitiveDisability =>
      'Khuyết tật nhận thức hoặc trí tuệ';

  @override
  String get dynamic_option_sensoryDisability =>
      'Khuyết tật giác quan (thị/thính)';

  @override
  String get dynamic_option_mentalHealth => 'Tình trạng sức khỏe tâm thần';

  @override
  String get dynamic_option_chronicIllness => 'Bệnh mãn tính';

  @override
  String get dynamic_option_noneOfTheAbove => 'Không có mục nào ở trên';

  @override
  String get dynamic_summary_retirement =>
      'Thu nhập hưu trí hàng tháng cho người đã đi làm và đóng thuế An sinh xã hội.';

  @override
  String get dynamic_summary_ssdi =>
      'Phúc lợi khuyết tật hàng tháng (SSDI) cho người đã đóng An sinh xã hội và không thể làm việc do khuyết tật.';

  @override
  String get dynamic_summary_ssi =>
      'Hỗ trợ hàng tháng (SSI) cho người cao tuổi và người khuyết tật có thu nhập và tài sản hạn chế.';

  @override
  String get dynamic_summary_vaDisability =>
      'Khoản chi trả hàng tháng miễn thuế (VA Disability) cho cựu chiến binh có khuyết tật do nghĩa vụ tại ngũ gây ra hoặc làm trầm trọng thêm.';

  @override
  String get dynamic_summary_survivor =>
      'Khoản chi trả An sinh xã hội (Social Security) hàng tháng cho thân nhân đủ điều kiện sau khi người lao động qua đời.';

  @override
  String get dynamic_summary_funeral =>
      'Hỗ trợ tài chính chi phí tang lễ cho người qua đời do COVID-19 tại Hoa Kỳ (FEMA).';

  @override
  String get dynamic_reason_paidIntoSS =>
      'Bạn đã đi làm và đóng thuế An sinh xã hội.';

  @override
  String get dynamic_reason_retirementAge =>
      'Bạn đã đến ít nhất tuổi nghỉ hưu.';

  @override
  String get dynamic_reason_limitedIncome =>
      'Bạn có thu nhập và tài sản hạn chế.';

  @override
  String get dynamic_reason_disability =>
      'Bạn có khuyết tật hoặc bệnh đủ điều kiện.';

  @override
  String get dynamic_reason_unableToWork =>
      'Bạn không thể làm việc từ một năm trở lên do khuyết tật.';

  @override
  String get dynamic_reason_activeMilitary => 'Bạn đã phục vụ tại ngũ.';

  @override
  String get dynamic_reason_serviceDisability =>
      'Khuyết tật của bạn do nghĩa vụ tại ngũ gây ra hoặc làm trầm trọng thêm.';

  @override
  String get dynamic_reason_familyDeath => 'Gần đây bạn có người thân qua đời.';

  @override
  String get dynamic_reason_covidDeath => 'Cái chết liên quan đến COVID-19.';

  @override
  String get dynamic_reason_diedInUs => 'Người mất qua đời tại Hoa Kỳ.';

  @override
  String get dynamic_reason_afterDate =>
      'Người mất qua đời sau ngày 20 tháng 5, 2020.';

  @override
  String get dynamic_amount_ssi =>
      'Tối đa \$943/tháng cho cá nhân, \$1,415/tháng cho cặp đôi (mức 2024).';

  @override
  String get dynamic_amount_retirement =>
      'Mức hàng tháng phụ thuộc vào lịch sử lao động và tuổi yêu cầu.';

  @override
  String get dynamic_amount_ssdi =>
      'Mức hàng tháng phụ thuộc vào lịch sử lao động.';

  @override
  String get dynamic_amount_vaDisability =>
      'Mức phụ thuộc vào xếp hạng khuyết tật và người phụ thuộc.';

  @override
  String get dynamic_amount_survivor =>
      'Mức hàng tháng phụ thuộc vào hồ sơ của người lao động và quan hệ với họ.';

  @override
  String get dynamic_amount_funeral =>
      'Mức hoàn trả phụ thuộc vào chi phí tang lễ đủ điều kiện.';

  @override
  String get dynamic_document_ssnCard => 'Thẻ hoặc số An sinh xã hội (SSN)';

  @override
  String get dynamic_document_ssnCardDesc => 'Số SSN 9 chữ số của bạn';

  @override
  String get dynamic_document_proofOfAge => 'Bằng chứng tuổi';

  @override
  String get dynamic_document_proofOfAgeDesc => 'Giấy khai sinh hoặc hộ chiếu';

  @override
  String get dynamic_document_w2 => 'Mẫu W-2 hoặc tờ khai thuế tự kinh doanh';

  @override
  String get dynamic_document_w2RecentDesc => 'Hồ sơ thu nhập năm gần nhất';

  @override
  String get dynamic_document_w2CurrentPriorDesc =>
      'Hồ sơ thu nhập năm hiện tại và năm trước';

  @override
  String get dynamic_document_bankInfo => 'Thông tin tài khoản ngân hàng';

  @override
  String get dynamic_document_bankInfoDesc =>
      'Để nhận phúc lợi qua chuyển khoản trực tiếp';

  @override
  String get dynamic_document_medicalRecords => 'Hồ sơ y tế';

  @override
  String get dynamic_document_medicalRecordsDesc =>
      'Tài liệu về khuyết tật từ bác sĩ, bệnh viện hoặc phòng khám';

  @override
  String get dynamic_document_incomeResources =>
      'Bằng chứng thu nhập và tài sản';

  @override
  String get dynamic_document_incomeResourcesDesc =>
      'Phiếu lương, sao kê ngân hàng hoặc thư xác nhận phúc lợi';

  @override
  String get dynamic_document_disabilityDocsDesc =>
      'Tài liệu về khuyết tật của bạn';

  @override
  String get dynamic_document_livingArrangement => 'Bằng chứng về chỗ ở';

  @override
  String get dynamic_document_livingArrangementDesc =>
      'Hợp đồng thuê, sao kê thế chấp hoặc thư từ chủ nhà';

  @override
  String get dynamic_document_citizenship =>
      'Bằng chứng quốc tịch hoặc tình trạng nhập cư';

  @override
  String get dynamic_document_citizenshipDesc =>
      'Giấy khai sinh, hộ chiếu hoặc giấy tờ nhập cư';

  @override
  String get dynamic_document_dd214 => 'DD-214 (giấy xuất ngũ)';

  @override
  String get dynamic_document_dd214Desc => 'Chứng nhận giải ngũ hoặc xuất ngũ';

  @override
  String get dynamic_document_serviceEvidenceDesc =>
      'Bằng chứng liên kết khuyết tật với nghĩa vụ quân sự';

  @override
  String get dynamic_document_vaForm => 'Mẫu VA 21-526EZ';

  @override
  String get dynamic_document_vaFormDesc => 'Đơn xin Bồi thường Khuyết tật';

  @override
  String get dynamic_document_deceasedSsn =>
      'Số An sinh xã hội của người mất (SSN)';

  @override
  String get dynamic_document_deceasedSsnDesc => 'SSN của người lao động';

  @override
  String get dynamic_document_deathCertificate => 'Giấy chứng tử';

  @override
  String get dynamic_document_deathCertificateDesc =>
      'Bản sao có chứng thực của giấy chứng tử';

  @override
  String get dynamic_document_relationshipProof => 'Bằng chứng quan hệ';

  @override
  String get dynamic_document_relationshipProofDesc =>
      'Giấy đăng ký kết hôn, giấy khai sinh hoặc giấy nhận nuôi';

  @override
  String get dynamic_document_covidDeathCertificateDesc =>
      'Phải ghi nhận cái chết do COVID-19';

  @override
  String get dynamic_document_funeralReceipts => 'Hóa đơn chi phí tang lễ';

  @override
  String get dynamic_document_funeralReceiptsDesc =>
      'Hóa đơn chi tiết hoặc hợp đồng từ nhà cung cấp dịch vụ tang lễ';

  @override
  String get dynamic_document_usResidency => 'Bằng chứng cư trú tại Hoa Kỳ';

  @override
  String get dynamic_document_usResidencyDesc =>
      'Cho người chịu chi phí tang lễ';

  @override
  String get dynamic_document_femaAppNumber => 'Số đơn FEMA';

  @override
  String get dynamic_document_femaAppNumberDesc =>
      'Nếu bạn từng nộp đơn xin hỗ trợ FEMA khác';

  @override
  String get lang_en => 'English';

  @override
  String get lang_es => 'Español';

  @override
  String get brand_name => 'Benefits Digger';

  @override
  String get brand_tagline =>
      'Tìm mọi phúc lợi bạn có thể đủ điều kiện. Dựa trên nguồn chính thức.';

  @override
  String get nav_screen => 'Sàng lọc';

  @override
  String get nav_chat => 'Trợ lý';

  @override
  String get nav_programs => 'Chương trình';

  @override
  String get nav_skipToContent => 'Bỏ qua đến nội dung chính';

  @override
  String get nav_openMenu => 'Mở menu';

  @override
  String get nav_closeMenu => 'Đóng menu';

  @override
  String get theme_toggle => 'Chuyển giao diện';

  @override
  String get theme_light => 'Sáng';

  @override
  String get theme_dark => 'Tối';

  @override
  String get theme_system => 'Theo hệ thống';

  @override
  String get language_switcher => 'Ngôn ngữ';

  @override
  String get landing_eyebrow => 'Lập kế hoạch tự tin';

  @override
  String get landing_heroTitle =>
      'Xem mọi phúc lợi chính phủ bạn có thể đủ điều kiện.';

  @override
  String get landing_heroLede =>
      'Benefits Digger đưa bạn qua một đoạn trò chuyện ngắn, sàng lọc theo các chương trình liên bang và tiểu bang, và đặt mỗi kết quả khớp trên một nguồn chính thức.';

  @override
  String get landing_startScreening => 'Bắt đầu sàng lọc';

  @override
  String get landing_startScreeningHint =>
      'Hướng dẫn năm phút. Riêng tư. Không cần tài khoản.';

  @override
  String get landing_askAssistant => 'Hỏi trợ lý';

  @override
  String get landing_askAssistantHint => 'Mô tả tình huống bằng lời của bạn.';

  @override
  String get landing_browsePrograms => 'Duyệt chương trình';

  @override
  String get landing_browseProgramsHint =>
      'Tìm trong danh mục chương trình chính thức.';

  @override
  String get landing_howItWorksTitle => 'Cách hoạt động';

  @override
  String get landing_howItWorksLede =>
      'Ba bước tôn trọng thời gian và tình huống của bạn.';

  @override
  String get landing_step1Title => 'Hãy kể tình huống của bạn';

  @override
  String get landing_step1Body =>
      'Gõ một câu về tình huống của bạn, hoặc trả lời vài câu có/không ngắn. Chúng tôi sẽ chuyển câu chuyện thành một bộ sàng lọc có cấu trúc.';

  @override
  String get landing_step2Title => 'Chúng tôi đối chiếu với quy tắc chính thức';

  @override
  String get landing_step2Body =>
      'Mỗi chương trình được chấm theo quy tắc đủ điều kiện liên bang hoặc tiểu bang mới nhất. Khi thiếu dữ liệu, chúng tôi sẽ nói thẳng.';

  @override
  String get landing_step3Title => 'Rời đi với một kế hoạch';

  @override
  String get landing_step3Body =>
      'Nhận danh sách các bước tiếp theo, tài liệu cần thiết và liên kết trực tiếp đến các trang nộp đơn chính thức.';

  @override
  String get landing_trustTitle => 'Vì sao mọi người tin tưởng kết quả';

  @override
  String get landing_trustOfficial => 'Lấy nguồn từ tài liệu .gov chính thức';

  @override
  String get landing_trustOfficialBody =>
      'Mỗi kết quả khớp đều dựa trên quy tắc cơ quan đã công bố và liên kết về trang gốc.';

  @override
  String get landing_trustPrivate => 'Riêng tư mặc định';

  @override
  String get landing_trustPrivateBody =>
      'Câu trả lời của bạn ở lại trong phiên trình duyệt. Chúng tôi không bao giờ bán, chia sẻ hay yêu cầu đăng nhập.';

  @override
  String get landing_trustExplainable => 'Độ tin cậy có thể giải thích';

  @override
  String get landing_trustExplainableBody =>
      'Chúng tôi cho bạn biết vì sao mỗi chương trình khớp, còn thiếu gì, và độ tin cậy của buổi sàng lọc.';

  @override
  String get landing_comingSoon => 'Sắp ra mắt';

  @override
  String get landing_comingSoonBody =>
      'Phần này của Benefits Digger đang được xây dựng. Hãy quay lại sau ít lâu.';

  @override
  String get landing_notFoundTitle => 'Không tìm thấy trang đó';

  @override
  String get landing_notFoundBody =>
      'Trang bạn đang tìm đã được di chuyển hoặc không tồn tại.';

  @override
  String get landing_notFoundCta => 'Về trang chủ';

  @override
  String get landing_errorTitle => 'Đã xảy ra sự cố';

  @override
  String get landing_errorBody =>
      'Đã xảy ra lỗi không mong muốn khi tải trang này. Hãy thử lại; nếu vẫn lỗi, đội ngũ đã được thông báo.';

  @override
  String get landing_errorRetry => 'Thử lại';

  @override
  String get landing_loading => 'Đang tải...';

  @override
  String get footer_disclaimer =>
      'Benefits Digger là một công cụ sàng lọc độc lập. Nó không liên kết, được chứng thực hay vận hành bởi chính phủ liên bang Hoa Kỳ hay bất kỳ cơ quan tiểu bang nào. Đủ điều kiện cuối cùng do cơ quan vận hành phúc lợi quyết định.';

  @override
  String get footer_privacy => 'Quyền riêng tư';

  @override
  String get footer_sources => 'Nguồn chính thức';

  @override
  String get footer_about => 'Giới thiệu';

  @override
  String footer_copyright(String year) {
    return '$year Benefits Digger';
  }

  @override
  String get helpBot_title => 'Trợ giúp về ứng dụng';

  @override
  String get helpBot_placeholder => 'Hỏi cách sử dụng ứng dụng…';

  @override
  String get helpBot_openLabel => 'Nhận trợ giúp về ứng dụng';

  @override
  String get helpBot_emptyState =>
      'Hỏi về cách dùng tính năng, điều hướng tới trang, hoặc hiểu một câu sàng lọc. (Câu hỏi về phúc lợi hãy dùng cuộc trò chuyện chính.)';

  @override
  String get helpBot_streaming => 'Đang suy nghĩ…';

  @override
  String get helpBot_error =>
      'Không kết nối được trợ lý trợ giúp. Hãy thử lại sau ít phút.';

  @override
  String get helpBot_close => 'Đóng trợ giúp';
}
