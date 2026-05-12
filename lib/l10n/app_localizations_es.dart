// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get nav_home => 'Inicio';

  @override
  String get nav_dashboard => 'Panel';

  @override
  String get nav_results => 'Resultados';

  @override
  String get nav_whatif => 'Laboratorio';

  @override
  String get nav_explorer => 'Explorador';

  @override
  String get page_homeTitle => 'Benefits Digger';

  @override
  String get page_dashboardTitle => 'Panel de planificacion - Benefits Digger';

  @override
  String get page_resultsTitle => 'Resultados - Benefits Digger';

  @override
  String get page_whatifTitle => 'Laboratorio de hipotesis - Benefits Digger';

  @override
  String get page_explorerTitle => 'Explorador de programas - Benefits Digger';

  @override
  String get app_eyebrow => 'Benefits Digger';

  @override
  String get app_headline =>
      'Planifique, compare y busque beneficios con evidencia oficial del gobierno.';

  @override
  String get app_lede =>
      'Evaluar beneficios, comparar escenarios hipoteticos, explorar el catalogo oficial y obtener un plan de accion basado en fuentes gubernamentales.';

  @override
  String get home_startScreening => 'Iniciar evaluacion';

  @override
  String get home_trustPrivate => 'Sus datos son privados y nunca se guardan.';

  @override
  String get home_trustSources =>
      'Los datos provienen directamente de programas gubernamentales oficiales.';

  @override
  String get home_scope => 'Alcance';

  @override
  String get home_scopeBoth => 'Federal y estatal';

  @override
  String get home_scopeFederal => 'Solo federal';

  @override
  String get home_scopeState => 'Solo estatal';

  @override
  String get home_state => 'Estado';

  @override
  String get home_chooseState => 'Elija un estado';

  @override
  String get home_breadth => 'Amplitud';

  @override
  String get home_breadthFocused => 'Enfocada';

  @override
  String get home_breadthBalanced => 'Equilibrada';

  @override
  String get home_breadthBroad => 'Amplia';

  @override
  String get home_depth => 'Profundidad';

  @override
  String get home_depthLight => 'General';

  @override
  String get home_depthStandard => 'Estandar';

  @override
  String get home_depthDetailed => 'Detallada';

  @override
  String get home_categories => 'Categorias de beneficios';

  @override
  String get home_categoriesHint =>
      'Seleccione al menos una categoria para encontrar beneficios para los que pueda calificar e informacion sobre como solicitarlos.';

  @override
  String get home_selectAll => 'Seleccionar todo';

  @override
  String get home_clear => 'Limpiar';

  @override
  String get home_apply => 'Aplicar selecciones';

  @override
  String get home_reset => 'Restablecer';

  @override
  String get home_refreshSources => 'Actualizar fuentes oficiales';

  @override
  String get home_questionFlow => 'Flujo de preguntas';

  @override
  String get home_questionEmpty =>
      'Inicie una sesion para comenzar la evaluacion.';

  @override
  String get home_saveAnswer => 'Guardar respuesta';

  @override
  String get home_backQuestion => 'Volver a la pregunta anterior';

  @override
  String get home_showResults => 'Ver resultados ahora';

  @override
  String get home_reviewQueue => 'Cola de revision';

  @override
  String get home_refreshQueue => 'Actualizar cola';

  @override
  String get home_noReviewTasks => 'No hay tareas de revision aun.';

  @override
  String home_breadthApprox(String description, String count) {
    return '$description (~$count preguntas)';
  }

  @override
  String home_depthApprox(String description) {
    return '$description';
  }

  @override
  String get home_noMoreQuestions =>
      'No hay mas preguntas en cola. Los resultados estan listos.';

  @override
  String get home_noProgramsFound =>
      'No pudimos encontrar programas de beneficios que coincidan con su seleccion. Intente ampliar sus categorias o seleccionar un estado diferente.';

  @override
  String get home_selectCategory =>
      'Seleccione al menos una categoria antes de aplicar sus selecciones.';

  @override
  String get home_chooseScope =>
      'Elija un alcance de evaluacion antes de iniciar su sesion.';

  @override
  String get home_chooseStateMsg =>
      'Elija un estado antes de iniciar la evaluacion estatal o combinada.';

  @override
  String get home_chooseOne => 'Elija una opcion';

  @override
  String get home_searching => 'Buscando...';

  @override
  String get home_creatingSession => 'Creando sesion...';

  @override
  String get home_creatingSessionState =>
      'Creando sesion y cargando beneficios estatales...';

  @override
  String home_sessionLive(String sessionId) {
    return 'La sesion $sessionId esta activa.';
  }

  @override
  String home_sessionError(String error) {
    return 'No se pudo iniciar la sesion: $error';
  }

  @override
  String get home_answerRequired => 'Elija una respuesta antes de continuar.';

  @override
  String get home_answerSaved => 'Respuesta guardada.';

  @override
  String home_answerError(String error) {
    return 'No se pudo guardar la respuesta: $error';
  }

  @override
  String get home_resultsRefreshed => 'Resultados actualizados.';

  @override
  String get home_refreshingOfficialSources =>
      'Actualizando fuentes oficiales...';

  @override
  String get home_officialSourcesRefreshed => 'Fuentes oficiales actualizadas.';

  @override
  String home_syncSummary(String added, String crawled) {
    return 'Fuentes oficiales actualizadas. Se rastrearon $crawled sitios de programas y se agregaron $added fuentes directas de paginas gubernamentales.';
  }

  @override
  String home_syncFailed(String error) {
    return 'La sincronizacion fallo: $error';
  }

  @override
  String home_sensitivity(String level) {
    return 'sensibilidad $level';
  }

  @override
  String get home_sourceLabel => 'Fuente';

  @override
  String home_reviewTaskMeta(String score, String diffType) {
    return '$diffType · materialidad $score';
  }

  @override
  String get home_adminKey => 'Clave de acceso de administrador';

  @override
  String get home_adminPlaceholder =>
      'Solo se necesita cuando la proteccion de administrador esta activada';

  @override
  String get home_adminHelp =>
      'Se usa solo para la cola de revision y las acciones de actualizacion de fuentes. Se guarda en esta pestana del navegador hasta que la borre.';

  @override
  String get home_saveKey => 'Guardar clave';

  @override
  String get home_clearKey => 'Borrar clave';

  @override
  String get home_adminSaved =>
      'Clave de administrador guardada para esta pestana del navegador.';

  @override
  String get home_adminCleared => 'Clave de administrador borrada.';

  @override
  String get home_lifeIntakePill => 'Intake por evento de vida';

  @override
  String get home_lifeIntakeTitle => 'Describa lo que esta pasando';

  @override
  String get home_lifeIntakeLabel =>
      'Cuente la dificultad con sus propias palabras';

  @override
  String get home_lifeIntakePlaceholder =>
      'Ejemplo: perdi mi trabajo, estoy atrasado con la renta y trato de entender si hay ayuda para comida y cobertura medica.';

  @override
  String get home_lifeIntakeHint =>
      'No necesita clasificar el problema primero. Convertiremos su descripcion en categorias sugeridas, hechos probables y las siguientes preguntas que mas importan.';

  @override
  String get home_lifeIntakeAnalyze => 'Analizar mi situacion';

  @override
  String get home_lifeIntakeClear => 'Borrar intake';

  @override
  String get home_lifeSummaryTitle => 'Lo que entendi';

  @override
  String get home_lifeSuggestedScope => 'Alcance sugerido';

  @override
  String get home_lifeSuggestedState => 'Estado sugerido';

  @override
  String get home_lifeCategoriesTitle => 'Areas de beneficios sugeridas';

  @override
  String get home_lifeFactsTitle => 'Hechos estructurados hasta ahora';

  @override
  String get home_lifeMissingTitle => 'Todavia conviene preguntar';

  @override
  String get home_lifeApply => 'Usar estas sugerencias en el evaluador';

  @override
  String get home_lifeStart => 'Iniciar evaluacion desde el chat';

  @override
  String get home_lifeChatTitle => 'Asistente de beneficios';

  @override
  String get home_lifeAssistantName => 'Zobo';

  @override
  String get home_lifeChatLauncherLabel => 'Abrir el asistente Zobo';

  @override
  String get home_lifeChatClose => 'Minimizar asistente';

  @override
  String get home_lifeChatMinimize => 'Minimizar';

  @override
  String get home_lifeChatHint =>
      'Cuenteme lo que esta pasando y hare una pregunta corta a la vez.';

  @override
  String get home_lifeChatEmpty =>
      'Empiece describiendo lo que esta viviendo y yo lo traducire en areas de beneficios y siguientes preguntas.';

  @override
  String get home_lifeChatInputLabel => 'Responder al asistente';

  @override
  String get home_lifeChatWelcome =>
      'Hola. Soy Zobo. Cuénteme un poco de lo que esta pasando y le ayudare a ordenar los siguientes pasos.';

  @override
  String get home_lifeChatWelcomeSession =>
      'Hola. Soy Zobo. Puedo acompañarlo mientras revisa esta sesion. Pregunteme por un resultado, un dato faltante o el siguiente paso.';

  @override
  String get home_lifeChatPlaceholder =>
      'Pruebe: perdi mi trabajo, estoy atrasado con la renta y necesito ayuda con comida.';

  @override
  String get home_lifeChatPlaceholderYesNo =>
      'Aqui basta con un si o no corto.';

  @override
  String get home_lifeChatPlaceholderState =>
      'Responda con un estado como CA, California o Nueva York.';

  @override
  String get home_lifeChatSend => 'Responder';

  @override
  String get home_lifeChatSending => 'Enviando...';

  @override
  String get home_lifeChatQuickReplies => 'Respuestas rapidas';

  @override
  String get home_lifeChatNavigate => 'Tambien puede ir a';

  @override
  String get home_navAction_use_screener => 'Usar el evaluador';

  @override
  String get home_navAction_start_screening => 'Iniciar evaluacion';

  @override
  String get home_navAction_open_explorer => 'Abrir el explorador de programas';

  @override
  String get home_navAction_open_results => 'Abrir resultados';

  @override
  String get home_navAction_open_dashboard => 'Abrir el panel';

  @override
  String get home_lifeChatUserLabel => 'Usted';

  @override
  String get home_lifeChatStatusEmpty =>
      'Cuénteme lo que esta pasando para empezar.';

  @override
  String get home_lifeChatStatusWaitingDetails =>
      'Cuénteme un poco mas para poder orientarlo mejor.';

  @override
  String get home_lifeChatStatusThinking => 'Pensando en su actualizacion...';

  @override
  String get home_lifeChatStatusReady => 'Tengo una pregunta rapida lista.';

  @override
  String get home_lifeChatStatusDone => 'Ya tengo suficiente para avanzar.';

  @override
  String get home_lifeNoCategories =>
      'Aun no se infirieron areas de beneficios.';

  @override
  String get home_lifeNoFacts => 'Aun no se capturaron hechos estructurados.';

  @override
  String get home_lifeNoMissing =>
      'No faltan preguntas de seguimiento criticas en este momento.';

  @override
  String get home_lifeApplyDone =>
      'Las sugerencias del asistente se copiaron a los controles del evaluador.';

  @override
  String get home_lifeStarted =>
      'La evaluacion comenzo desde las sugerencias del asistente.';

  @override
  String get home_lifeDescriptionRequired =>
      'Cuénteme lo que esta pasando para que pueda ayudar.';

  @override
  String get home_lifeAnalyzing => 'Analizando su situacion...';

  @override
  String get home_lifeAnalyzed => 'El intake por evento de vida se actualizo.';

  @override
  String home_lifeInterpretError(String error) {
    return 'No se pudo analizar el intake: $error';
  }

  @override
  String get home_lifeProbeUpdated => 'Se agregaron detalles de seguimiento.';

  @override
  String home_lifeProbeError(String error) {
    return 'No se pudo procesar ese seguimiento: $error';
  }

  @override
  String get results_title => 'Resultados';

  @override
  String results_liveMatches(String count) {
    return '$count coincidencias activas';
  }

  @override
  String get results_print => 'Imprimir';

  @override
  String get results_redoScreening => 'Reiniciar evaluacion';

  @override
  String get results_downloadPdf => 'Descargar PDF';

  @override
  String get results_scrollUp => 'Desplazar hacia arriba';

  @override
  String get results_scrollDown => 'Desplazar hacia abajo';

  @override
  String get results_generatingPdf => 'Generando...';

  @override
  String get results_noSession =>
      'No hay sesion activa. <a href=\"/\">Inicie una evaluacion</a> primero.';

  @override
  String get results_federalTitle => 'Resultados federales';

  @override
  String get results_stateTitle => 'Resultados estatales';

  @override
  String get results_noFederal =>
      'Aun no hay resultados federales. Responda mas preguntas para mejorar las coincidencias.';

  @override
  String get results_noState =>
      'Aun no hay resultados estatales. Responda mas preguntas para mejorar las coincidencias.';

  @override
  String get results_federalOnlyFinished =>
      'Esta es una sesion solo federal, por lo que no se muestran resultados estatales.';

  @override
  String get results_federalOnlyHidden =>
      'Los resultados estatales estan ocultos mientras se selecciona el alcance solo federal.';

  @override
  String results_loadError(String error) {
    return 'No se pudieron cargar los resultados: $error';
  }

  @override
  String get dashboard_title => 'Panel de planificacion';

  @override
  String get dashboard_noSession => 'Sin sesion activa';

  @override
  String get dashboard_empty =>
      'Aun no hay sesion activa. Inicie una sesion para desbloquear el resumen de planificacion, los pasos de accion y el analisis de datos faltantes.';

  @override
  String get dashboard_goHome => 'Ir a Inicio para iniciar una sesion';

  @override
  String get dashboard_downloadPdf => 'Descargar PDF';

  @override
  String get dashboard_generatingPdf => 'Generando...';

  @override
  String get dashboard_benefitStack => 'Pila de beneficios';

  @override
  String get dashboard_missingFacts => 'Datos faltantes principales';

  @override
  String get dashboard_actions => 'Proximas acciones recomendadas';

  @override
  String get dashboard_sourceHub => 'Centro de fuentes oficiales';

  @override
  String get dashboard_docChecklist => 'Lista de documentos';

  @override
  String get dashboard_planningNotes => 'Notas de planificacion';

  @override
  String get dashboard_likelyPrograms => 'Programas probables';

  @override
  String get dashboard_possiblePrograms => 'Programas posibles';

  @override
  String get dashboard_answeredQuestions => 'Preguntas respondidas';

  @override
  String get dashboard_avgRuleCoverage => 'Cobertura promedio de reglas';

  @override
  String get dashboard_estMonthly => 'Beneficios mensuales est.';

  @override
  String get dashboard_noBenefitStack => 'Aun no hay pila de beneficios.';

  @override
  String get dashboard_noMissingFacts =>
      'No hay datos faltantes destacados en este momento.';

  @override
  String get dashboard_noActions => 'Aun no hay pasos de accion.';

  @override
  String get dashboard_noSourceHub => 'Aun no hay centro de fuentes oficiales.';

  @override
  String get dashboard_noDocuments =>
      'Aun no se requieren documentos. Complete la evaluacion para ver lo que necesita.';

  @override
  String get dashboard_noPlanningNotes =>
      'Las notas de planificacion apareceran despues de que su sesion tenga resultados.';

  @override
  String dashboard_loadError(String error) {
    return 'No se pudo cargar el plan: $error';
  }

  @override
  String get dashboard_noSessionLink =>
      'Sin sesion activa. <a href=\"/\">Inicie una evaluacion</a> primero.';

  @override
  String dashboard_controlsPill(
    String breadthPercent,
    String depthLabel,
    String breadthLabel,
    String depthPercent,
  ) {
    return 'Amplitud $breadthLabel ($breadthPercent%) · Profundidad $depthLabel ($depthPercent%)';
  }

  @override
  String get dashboard_likely => 'probables';

  @override
  String get dashboard_possible => 'posibles';

  @override
  String get dashboard_noTopPrograms => 'Aun no hay programas principales.';

  @override
  String dashboard_confidence(String value) {
    return 'confianza $value/100';
  }

  @override
  String dashboard_affects(String count) {
    return 'Afecta a $count coincidencias de programa.';
  }

  @override
  String dashboard_neededFor(String programs) {
    return 'Necesario para: $programs';
  }

  @override
  String get whatif_title => 'Laboratorio de hipotesis';

  @override
  String get whatif_pill => 'Comparacion de escenarios';

  @override
  String get whatif_noSession =>
      'No hay sesion activa. <a href=\"/\">Inicie una evaluacion</a> primero.';

  @override
  String get whatif_quickStartIntro =>
      'No hay sesion activa. Inicie una aqui para ejecutar escenarios:';

  @override
  String get whatif_scopeLabel => 'Alcance';

  @override
  String get whatif_stateLabel => 'Estado';

  @override
  String get whatif_categoriesLabel => 'Categorias de beneficios';

  @override
  String get whatif_startSession => 'Iniciar sesion';

  @override
  String get whatif_description =>
      'Ejecute comparaciones de escenarios sin cambiar sus respuestas guardadas. Estos preajustes muestran como cambia el conjunto de resultados si un hecho de vida cambia.';

  @override
  String get whatif_startThenRun =>
      'Inicie una sesion y luego ejecute un escenario.';

  @override
  String get whatif_noResult => 'No se devolvieron resultados del escenario.';

  @override
  String get whatif_scenarioCompare => 'Comparacion de escenarios';

  @override
  String get whatif_likelyDelta => 'Delta probable';

  @override
  String get whatif_possibleDelta => 'Delta posible';

  @override
  String get whatif_federalDelta => 'Delta federal';

  @override
  String get whatif_stateDelta => 'Delta estatal';

  @override
  String get whatif_newPrograms => 'Programas nuevos o desbloqueados';

  @override
  String get whatif_improvedPrograms => 'Programas mejorados';

  @override
  String get whatif_noNewMatches =>
      'No hay nuevas coincidencias positivas en este escenario.';

  @override
  String get whatif_noImprovements =>
      'No hay mejoras de estado en este escenario.';

  @override
  String get whatif_toStatus => 'a';

  @override
  String get whatif_startFirst =>
      'Inicie una sesion antes de ejecutar escenarios.';

  @override
  String get whatif_updated => 'Comparacion de escenarios actualizada.';

  @override
  String whatif_failed(String error) {
    return 'La comparacion de escenarios fallo: $error';
  }

  @override
  String get explorer_title => 'Explorador de programas';

  @override
  String get explorer_refresh => 'Actualizar explorador';

  @override
  String get explorer_description =>
      'Hybrid Explorer combina descripciones en lenguaje natural con el catalogo oficial. Puede usar Gemini para interpretar la necesidad cuando esta configurado y siempre vuelve a una coincidencia local basada en fuentes oficiales.';

  @override
  String get explorer_scope => 'Alcance';

  @override
  String get explorer_state => 'Estado';

  @override
  String get explorer_describe => 'Describa lo que necesita';

  @override
  String get explorer_describePlaceholder =>
      'Ejemplo: perdi a un familiar en California y necesito ayuda con gastos funerarios y beneficios para sobrevivientes.';

  @override
  String get explorer_search => 'Busqueda exacta por palabra clave';

  @override
  String get explorer_placeholder =>
      'Pruebe jubilacion, discapacidad, funeral, veteranos...';

  @override
  String get explorer_submit => 'Ejecutar busqueda hibrida';

  @override
  String get explorer_empty =>
      'Use el explorador para navegar el catalogo oficial de programas.';

  @override
  String get explorer_noMatch =>
      'Ningun programa coincidio con esta busqueda. Intente una descripcion mas amplia o quite un filtro.';

  @override
  String get explorer_minChars =>
      'Ingrese al menos 2 caracteres para la busqueda exacta por palabra clave.';

  @override
  String get explorer_openOfficial => 'Abrir pagina oficial del gobierno';

  @override
  String explorer_failed(String error) {
    return 'El explorador fallo: $error';
  }

  @override
  String get explorer_methodGemini => 'Gemini + catalogo fundamentado';

  @override
  String get explorer_methodHeuristic =>
      'Catalogo fundamentado + interpretacion local';

  @override
  String get explorer_interpretationTitle => 'Interpretacion de la busqueda';

  @override
  String get explorer_needAreas => 'Areas de necesidad';

  @override
  String get explorer_stateLabel => 'Estado:';

  @override
  String get explorer_searchTerms => 'Terminos de busqueda:';

  @override
  String explorer_score(String score) {
    return 'Puntaje $score';
  }

  @override
  String get explorer_browseSummary =>
      'Explorando el catalogo oficial de programas.';

  @override
  String get explorer_localizedSummary =>
      'Mostrando como se interpreto su necesidad desde el catalogo local fundamentado.';

  @override
  String get card_confidence => 'Confianza';

  @override
  String get card_clickExpand => '(clic para expandir)';

  @override
  String get card_eligibilityCriteria => 'Criterios de elegibilidad';

  @override
  String get card_criteriaMet => 'cumplidos';

  @override
  String get card_met => 'cumplidos';

  @override
  String get card_notMet => 'no cumplidos';

  @override
  String get card_unanswered => 'sin respuesta';

  @override
  String get card_amount => 'Monto';

  @override
  String get card_amountEstimated => ' (estimado)';

  @override
  String get card_whyMatched => 'Por que coincidio';

  @override
  String get card_noMatchedReasons => 'Aun no hay razones de coincidencia.';

  @override
  String get card_missingFacts => 'Lo que aun falta';

  @override
  String get card_noMissingFacts => 'No faltan datos para este pase actual.';

  @override
  String get card_documentsNeeded => 'Documentos necesarios';

  @override
  String get card_noDocuments =>
      'No hay lista de documentos disponible para este programa.';

  @override
  String get card_dataGathered =>
      'Datos recopilados de sitios web oficiales del gobierno';

  @override
  String get card_noSources =>
      'No hay fuentes oficiales del gobierno adjuntas.';

  @override
  String get card_howToGet => 'Como obtener este beneficio';

  @override
  String get card_noApplicationPath =>
      'Aun no hay una via oficial de solicitud disponible para este resultado.';

  @override
  String get card_openOfficial => 'Abrir pagina oficial del gobierno';

  @override
  String get card_useSourcesBelow =>
      'Use las fuentes oficiales a continuacion.';

  @override
  String get card_notAvailable => 'No disponible';

  @override
  String get card_unknownAgency => 'Agencia desconocida';

  @override
  String get card_noSummary => 'No hay resumen disponible.';

  @override
  String get card_noBreakdown => 'No hay desglose disponible.';

  @override
  String card_verified(String date) {
    return 'verificado $date';
  }

  @override
  String get category_children_families => 'Ninos y familias';

  @override
  String get category_death => 'Fallecimiento';

  @override
  String get category_disabilities => 'Discapacidades';

  @override
  String get category_disasters => 'Desastres';

  @override
  String get category_education => 'Educacion';

  @override
  String get category_food => 'Alimentacion';

  @override
  String get category_general => 'General';

  @override
  String get category_health => 'Salud';

  @override
  String get category_housing_utilities => 'Vivienda y servicios';

  @override
  String get category_jobs_unemployment => 'Empleo y desempleo';

  @override
  String get category_military_veterans => 'Militares y veteranos';

  @override
  String get category_retirement_seniors => 'Jubilacion y personas mayores';

  @override
  String get category_welfare_cash_assistance =>
      'Asistencia social y en efectivo';

  @override
  String get breadth_focused =>
      'Enfocada mantiene la evaluacion corta y se concentra en las senales mas fuertes de programas.';

  @override
  String get breadth_balanced =>
      'Equilibrada explora una cantidad moderada de programas posibles antes de detenerse.';

  @override
  String get breadth_broad =>
      'Amplia sigue explorando por mas tiempo para cubrir mas programas posibles.';

  @override
  String get depth_light =>
      'General mantiene las preguntas amplias, por lo general con si/no o categorias simples.';

  @override
  String get depth_standard =>
      'Estandar mezcla preguntas amplias con algunos seguimientos mas especificos.';

  @override
  String get depth_detailed =>
      'Detallada pide montos exactos, fechas, duraciones y otros datos precisos cuando estan disponibles.';

  @override
  String get scenario_limitedIncome =>
      'Si tuviera ingresos y recursos limitados';

  @override
  String get scenario_limitedIncomeDesc =>
      'Util para planificacion de asistencia en efectivo o estilo SSI.';

  @override
  String get scenario_disability => 'Si tuviera una discapacidad calificante';

  @override
  String get scenario_disabilityDesc =>
      'Prueba las vias relacionadas con discapacidad y las reglas de limitacion laboral.';

  @override
  String get scenario_military => 'Si tuviera servicio militar activo';

  @override
  String get scenario_militaryDesc =>
      'Verifica si el historial de servicio abre beneficios para veteranos.';

  @override
  String get scenario_familyDeath =>
      'Si tuviera un fallecimiento familiar reciente';

  @override
  String get scenario_familyDeathDesc =>
      'Explora las vias de beneficios para sobrevivientes y asistencia funeraria.';

  @override
  String get status_likely_eligible => 'probablemente elegible';

  @override
  String get status_possibly_eligible => 'posiblemente elegible';

  @override
  String get status_unclear => 'Sin definir';

  @override
  String get status_likely_ineligible => 'probablemente no elegible';

  @override
  String get sensitivity_low => 'baja';

  @override
  String get sensitivity_medium => 'media';

  @override
  String get sensitivity_high => 'alta';

  @override
  String get certainty_rule_coverage => 'cobertura de reglas';

  @override
  String get certainty_source_authority => 'autoridad de la fuente';

  @override
  String get certainty_source_freshness => 'recencia de la fuente';

  @override
  String get certainty_program_determinism => 'determinismo del programa';

  @override
  String get certainty_amount_determinism => 'determinismo del monto';

  @override
  String get intake_scope_federal => 'Solo federal por ahora';

  @override
  String get intake_scope_state => 'Evaluacion especifica estatal';

  @override
  String get intake_scope_both => 'Evaluacion federal y estatal';

  @override
  String get intake_fact_state_code => 'Estado seleccionado';

  @override
  String get intake_fact_applicant_income => 'Ingresos y recursos limitados';

  @override
  String get intake_fact_applicant_disability =>
      'Discapacidad o condicion calificante';

  @override
  String get intake_fact_applicant_ability_to_work =>
      'No puede trabajar por un ano o mas';

  @override
  String get intake_fact_applicant_served_in_active_military =>
      'Servicio militar activo';

  @override
  String get intake_fact_applicant_service_disability =>
      'Discapacidad relacionada con el servicio';

  @override
  String get intake_fact_applicant_dolo => 'Fallecimiento familiar reciente';

  @override
  String get intake_fact_deceased_died_of_COVID =>
      'Fallecimiento relacionado con COVID';

  @override
  String get intake_fact_deceased_death_location_is_US =>
      'El fallecimiento ocurrio en EE. UU.';

  @override
  String get intake_fact_applicant_paid_into_SS =>
      'Trabajo y pago impuestos del Seguro Social';

  @override
  String get intake_fact_recent_job_loss =>
      'Perdida reciente de empleo u horas';

  @override
  String get intake_fact_housing_urgency =>
      'Presion urgente de vivienda o servicios';

  @override
  String get intake_fact_food_insecurity => 'Dificultad con comida o despensa';

  @override
  String get intake_fact_current_student =>
      'Actualmente en escuela o capacitacion laboral';

  @override
  String get intake_fact_has_children => 'Ninos o dependientes en el hogar';

  @override
  String get intake_fact_is_62_or_older => 'Edad de 62 anos o mas';

  @override
  String get intake_fact_recent_disaster_impact =>
      'Impacto reciente de desastre';

  @override
  String get intake_fact_needs_health_coverage =>
      'Necesita cobertura de salud o ayuda medica';

  @override
  String get intake_fact_annual_income_amount => 'Ingreso anual aproximado';

  @override
  String get docType_required => 'obligatorio';

  @override
  String get docType_recommended => 'recomendado';

  @override
  String get reviewStatus_open => 'abierta';

  @override
  String get reviewDiff_eligibility => 'elegibilidad';

  @override
  String get reviewDiff_structural => 'estructura';

  @override
  String get reviewDiff_content => 'contenido';

  @override
  String get server_step_startState =>
      'Comience en el sitio oficial estatal de servicios sociales.';

  @override
  String get server_step_useStateTools =>
      'Use las herramientas oficiales estatales de beneficios o las paginas del programa para elegir el beneficio que necesita.';

  @override
  String get server_step_followStateInstructions =>
      'Siga las instrucciones oficiales del estado para documentos, contacto con la oficina local o envio en linea.';

  @override
  String get server_step_reviewEligibility =>
      'Revise la fuente oficial del gobierno usada para esta coincidencia de elegibilidad.';

  @override
  String get server_step_openOfficial =>
      'Abra la pagina oficial del gobierno para iniciar o continuar la solicitud.';

  @override
  String get server_step_useSamePage =>
      'Use esa misma pagina oficial para los documentos requeridos, consultas de estado o detalles de contacto de la agencia.';

  @override
  String server_note_strongMatches(String plural, String count) {
    return 'Ya tiene $count coincidencia$plural fuerte$plural para seguir en sitios oficiales del gobierno.';
  }

  @override
  String server_note_possibleMatches(String plural, String count) {
    return 'Tiene $count coincidencia$plural posible$plural; responder algunas preguntas mas deberia precisarlas.';
  }

  @override
  String server_note_biggestGap(String label) {
    return 'La mayor brecha de informacion en este momento es: $label.';
  }

  @override
  String get server_note_chooseState =>
      'Elija un estado para desbloquear rutas oficiales de beneficios estatales.';

  @override
  String get admin_invalidKey =>
      'La clave de administrador guardada fue rechazada. Actualicela y vuelva a intentarlo.';

  @override
  String get admin_requiredKey =>
      'Se requiere una clave de administrador. Ingresela en el campo de acceso de administrador para usar la revision y la actualizacion de fuentes.';

  @override
  String errors_requestFailed(String status) {
    return 'La solicitud fallo con el estado $status.';
  }

  @override
  String get errors_genericTitle => 'Algo salio mal';

  @override
  String get errors_generic => 'Algo salio mal. Intentelo de nuevo.';

  @override
  String get errors_validation =>
      'No pudimos procesar esa solicitud — actualice la pagina e intente de nuevo.';

  @override
  String get errors_rateLimited =>
      'Demasiadas solicitudes. Espere un minuto e intente de nuevo.';

  @override
  String get errors_server =>
      'Nuestro servicio tiene problemas. Intentelo mas tarde.';

  @override
  String get errors_network =>
      'No se pudo conectar al servidor. Revise su conexion.';

  @override
  String get errors_timeout =>
      'La solicitud agoto el tiempo de espera. Intente de nuevo.';

  @override
  String get errors_auth => 'Necesita iniciar sesion para hacer eso.';

  @override
  String get errors_notFound => 'No pudimos encontrar lo que buscaba.';

  @override
  String get errors_tryAgain => 'Reintentar';

  @override
  String results_federalSection(int count) {
    return 'Programas federales ($count)';
  }

  @override
  String results_stateSection(int count) {
    return 'Programas estatales ($count)';
  }

  @override
  String get results_emptyFederal =>
      'Ningun programa federal coincide. Responda mas preguntas o amplie su evaluacion.';

  @override
  String get results_emptyState =>
      'Aun no coinciden programas estatales. Agregue su estado en la evaluacion para ver programas locales.';

  @override
  String get results_viewActionPlan => 'Ver plan de accion';

  @override
  String get results_couldNotLoad => 'No pudimos cargar sus resultados.';

  @override
  String get dashboard_couldNotLoad => 'No pudimos cargar su plan de accion.';

  @override
  String get dashboard_applyLinkUnavailable =>
      'Enlace de solicitud no disponible — contacte a su agencia local.';

  @override
  String get dashboard_apply => 'Solicitar';

  @override
  String dashboard_step(int n) {
    return 'Paso $n';
  }

  @override
  String get dashboard_emptyStack =>
      'Aun no tenemos una lista de beneficios para usted. Termine la evaluacion para llenarla.';

  @override
  String get dashboard_emptyActions =>
      'Aun no hay acciones — responda mas preguntas para obtener un plan personalizado.';

  @override
  String get dashboard_emptyDocuments => 'Aun no hay documentos por reunir.';

  @override
  String get dashboard_emptyNotes => 'Sin notas adicionales para su situacion.';

  @override
  String get dashboard_emptySources => 'No hay enlaces oficiales disponibles.';

  @override
  String get dashboard_helpNarrowDown => 'Ayudenos a afinar esto';

  @override
  String get dashboard_missingFactsHint =>
      'Responder esto desbloquea coincidencias mas precisas.';

  @override
  String get dashboard_resumeScreening => 'Reanudar evaluacion';

  @override
  String get dashboard_documentsTitle => 'Documentos por reunir';

  @override
  String get dashboard_notesTitle => 'Notas de planificacion';

  @override
  String get dashboard_sourceHubTitle => 'Centro de fuentes oficiales';

  @override
  String get dashboard_stackTitle => 'Su lista de beneficios';

  @override
  String get dashboard_actionsTitle => 'Proximas acciones';

  @override
  String get status_likelyEligible => 'Probablemente elegible';

  @override
  String get status_possiblyEligible => 'Posiblemente elegible';

  @override
  String get status_likelyIneligible => 'Probablemente no';

  @override
  String get dynamic_question_dob => 'Cual es su fecha de nacimiento?';

  @override
  String get dynamic_hint_dobExample => 'Por ejemplo: 1990-01-20';

  @override
  String get dynamic_question_paidIntoSS =>
      'Alguna vez trabajo y pago impuestos del Seguro Social de EE. UU.?';

  @override
  String get dynamic_question_limitedIncome =>
      'Tiene ingresos y recursos limitados?';

  @override
  String get dynamic_hint_limitedIncome =>
      'Esta es una pregunta general de evaluacion, no una determinacion final.';

  @override
  String get dynamic_question_disability =>
      'Tiene una discapacidad o enfermedad que califique?';

  @override
  String get dynamic_question_unableToWork =>
      'No puede trabajar por un ano o mas debido a su discapacidad?';

  @override
  String get dynamic_question_activeMilitary =>
      'Sirvio en el servicio militar, naval o aereo activo?';

  @override
  String get dynamic_question_serviceDisabilityDetailed =>
      'Su discapacidad fue causada o empeorada por su servicio militar activo?';

  @override
  String get dynamic_question_familyDeathDetailed =>
      'Recientemente experimento la muerte de un familiar cercano?';

  @override
  String get dynamic_question_dateOfDeath =>
      'Cual fue la fecha de fallecimiento?';

  @override
  String get dynamic_hint_dateOfDeath =>
      'Si no conoce la fecha exacta, ingrese una aproximada.';

  @override
  String get dynamic_question_covidDeath =>
      'La muerte de la persona estuvo relacionada con COVID-19?';

  @override
  String get dynamic_question_deathInUs => 'La persona murio en EE. UU.?';

  @override
  String get dynamic_hint_deathInUs =>
      'Incluye Puerto Rico y los territorios de EE. UU.';

  @override
  String get dynamic_question_householdIncome =>
      'Cual es su ingreso anual aproximado del hogar?';

  @override
  String get dynamic_hint_householdIncome =>
      'Como referencia, el nivel federal de pobreza de 2024 es de \$15,060 al ano para un hogar de una persona. Muchos programas usan entre 130 % y 200 % de ese umbral.';

  @override
  String get dynamic_question_disabilityType =>
      'Que tipo de discapacidad o condicion tiene?';

  @override
  String get dynamic_hint_disabilityType =>
      'Seleccione todo lo que corresponda. Segun las reglas de la SSA, una discapacidad que califica debe limitar de forma significativa su capacidad para realizar actividades basicas de trabajo.';

  @override
  String get dynamic_question_monthsUnableToWork =>
      'Cuantos meses su condicion le ha impedido trabajar?';

  @override
  String get dynamic_hint_monthsUnableToWork =>
      'SSDI requiere incapacidad para realizar una actividad lucrativa sustancial durante al menos 12 meses consecutivos (42 U.S.C. § 423(d)(1)(A)).';

  @override
  String get dynamic_question_approxAge => 'Cual es su edad aproximada?';

  @override
  String get dynamic_hint_approxAge =>
      'Una edad aproximada es suficiente para una revision rapida.';

  @override
  String get dynamic_question_exactDob =>
      'Cual es su fecha exacta de nacimiento?';

  @override
  String get dynamic_hint_exactDob =>
      'La edad plena de jubilacion varia: 66 anos para quienes nacieron entre 1943 y 1954, y aumenta a 67 para quienes nacieron en 1960 o despues (42 U.S.C. § 416(l)).';

  @override
  String get dynamic_question_militaryVeteran => 'Es veterano militar?';

  @override
  String get dynamic_hint_activeMilitary =>
      'Los beneficios de VA requieren servicio activo. El servicio de Reserva o Guardia Nacional puede calificar si fue activado bajo ordenes federales (38 U.S.C. § 101(2)).';

  @override
  String get dynamic_question_serviceDisabilitySimple =>
      'Su discapacidad estaba relacionada con el servicio militar?';

  @override
  String get dynamic_hint_serviceDisabilityDetailed =>
      'La compensacion por discapacidad de VA requiere una condicion conectada al servicio con una calificacion de discapacidad de al menos 10 % (38 U.S.C. § 1110).';

  @override
  String get dynamic_question_familyDeathSimple =>
      'Perdio recientemente a un familiar?';

  @override
  String get dynamic_hint_familyDeathDetailed =>
      'La elegibilidad para beneficios de sobreviviente depende de su relacion con la persona fallecida y de su historial laboral (42 U.S.C. § 402).';

  @override
  String get dynamic_question_stateCode =>
      'Que estado o territorio quiere para los beneficios estatales?';

  @override
  String get dynamic_hint_stateCode =>
      'Los beneficios estatales varian por estado y se mantienen separados de las coincidencias federales.';

  @override
  String get dynamic_option_yes => 'Si';

  @override
  String get dynamic_option_no => 'No';

  @override
  String get dynamic_option_physicalDisability => 'Discapacidad fisica';

  @override
  String get dynamic_option_cognitiveDisability =>
      'Discapacidad cognitiva o intelectual';

  @override
  String get dynamic_option_sensoryDisability =>
      'Discapacidad sensorial (vision/audicion)';

  @override
  String get dynamic_option_mentalHealth => 'Condicion de salud mental';

  @override
  String get dynamic_option_chronicIllness => 'Enfermedad cronica';

  @override
  String get dynamic_option_noneOfTheAbove => 'Ninguna de las anteriores';

  @override
  String get dynamic_summary_retirement =>
      'Ingreso mensual de jubilacion para personas que trabajaron y pagaron impuestos del Seguro Social.';

  @override
  String get dynamic_summary_ssdi =>
      'Beneficios mensuales por discapacidad para personas que aportaron al Seguro Social y no pueden trabajar debido a una discapacidad.';

  @override
  String get dynamic_summary_ssi =>
      'Apoyo mensual para personas mayores y personas con discapacidades que tienen ingresos y recursos limitados.';

  @override
  String get dynamic_summary_vaDisability =>
      'Pagos mensuales libres de impuestos para veteranos cuya discapacidad fue causada o empeorada por el servicio activo.';

  @override
  String get dynamic_summary_survivor =>
      'Pagos mensuales del Seguro Social para familiares elegibles despues de la muerte de un trabajador.';

  @override
  String get dynamic_summary_funeral =>
      'Ayuda financiera para costos de funeral o entierro de alguien que murio por COVID-19 en EE. UU.';

  @override
  String get dynamic_reason_paidIntoSS =>
      'Trabajo y pago impuestos del Seguro Social.';

  @override
  String get dynamic_reason_retirementAge =>
      'Tiene al menos la edad de jubilacion.';

  @override
  String get dynamic_reason_limitedIncome =>
      'Tiene ingresos y recursos limitados.';

  @override
  String get dynamic_reason_disability =>
      'Tiene una discapacidad o enfermedad que califica.';

  @override
  String get dynamic_reason_unableToWork =>
      'No puede trabajar durante un ano o mas debido a su discapacidad.';

  @override
  String get dynamic_reason_activeMilitary =>
      'Sirvio en el servicio militar activo.';

  @override
  String get dynamic_reason_serviceDisability =>
      'Su discapacidad fue causada o empeorada por el servicio activo.';

  @override
  String get dynamic_reason_familyDeath =>
      'Recientemente experimento la muerte de un familiar.';

  @override
  String get dynamic_reason_covidDeath =>
      'La muerte de la persona fallecida estuvo relacionada con COVID-19.';

  @override
  String get dynamic_reason_diedInUs => 'La persona fallecida murio en EE. UU.';

  @override
  String get dynamic_reason_afterDate =>
      'La persona fallecida murio despues del 20 de mayo de 2020.';

  @override
  String get dynamic_amount_ssi =>
      'Hasta \$943 al mes para personas individuales y \$1,415 al mes para parejas (tasas de 2024).';

  @override
  String get dynamic_amount_retirement =>
      'El monto mensual depende del historial laboral y de la edad al reclamarlo.';

  @override
  String get dynamic_amount_ssdi =>
      'El monto mensual depende del historial laboral.';

  @override
  String get dynamic_amount_vaDisability =>
      'El monto depende de la calificacion de discapacidad y de las personas dependientes.';

  @override
  String get dynamic_amount_survivor =>
      'El monto mensual depende del historial del trabajador y de su relacion con esa persona.';

  @override
  String get dynamic_amount_funeral =>
      'El monto del reembolso depende de los gastos funerarios elegibles.';

  @override
  String get dynamic_document_ssnCard => 'Tarjeta o numero del Seguro Social';

  @override
  String get dynamic_document_ssnCardDesc =>
      'Su numero de Seguro Social de 9 digitos';

  @override
  String get dynamic_document_proofOfAge => 'Prueba de edad';

  @override
  String get dynamic_document_proofOfAgeDesc =>
      'Certificado de nacimiento o pasaporte';

  @override
  String get dynamic_document_w2 =>
      'Formularios W-2 o declaraciones de impuestos por trabajo por cuenta propia';

  @override
  String get dynamic_document_w2RecentDesc =>
      'Registros de ingresos del ano mas reciente';

  @override
  String get dynamic_document_w2CurrentPriorDesc =>
      'Registros de ingresos del ano actual y del anterior';

  @override
  String get dynamic_document_bankInfo => 'Informacion de cuenta bancaria';

  @override
  String get dynamic_document_bankInfoDesc =>
      'Para deposito directo de beneficios';

  @override
  String get dynamic_document_medicalRecords => 'Historiales medicos';

  @override
  String get dynamic_document_medicalRecordsDesc =>
      'Documentacion de su discapacidad de medicos, hospitales o clinicas';

  @override
  String get dynamic_document_incomeResources =>
      'Prueba de ingresos y recursos';

  @override
  String get dynamic_document_incomeResourcesDesc =>
      'Recibos de pago, estados bancarios o cartas de concesion de beneficios';

  @override
  String get dynamic_document_disabilityDocsDesc =>
      'Documentacion de su discapacidad';

  @override
  String get dynamic_document_livingArrangement =>
      'Prueba de vivienda o arreglo de residencia';

  @override
  String get dynamic_document_livingArrangementDesc =>
      'Contrato de alquiler, estado de hipoteca o carta del arrendador';

  @override
  String get dynamic_document_citizenship =>
      'Prueba de ciudadania o estatus migratorio';

  @override
  String get dynamic_document_citizenshipDesc =>
      'Certificado de nacimiento, pasaporte o documentos migratorios';

  @override
  String get dynamic_document_dd214 => 'DD-214 (papeles de baja)';

  @override
  String get dynamic_document_dd214Desc =>
      'Certificado de Liberacion o Baja del Servicio Activo';

  @override
  String get dynamic_document_serviceEvidenceDesc =>
      'Evidencia que vincula su discapacidad con el servicio militar';

  @override
  String get dynamic_document_vaForm => 'Formulario VA 21-526EZ';

  @override
  String get dynamic_document_vaFormDesc =>
      'Solicitud de compensacion por discapacidad';

  @override
  String get dynamic_document_deceasedSsn =>
      'Numero de Seguro Social de la persona fallecida';

  @override
  String get dynamic_document_deceasedSsnDesc => 'El SSN del trabajador';

  @override
  String get dynamic_document_deathCertificate => 'Certificado de defuncion';

  @override
  String get dynamic_document_deathCertificateDesc =>
      'Copia certificada del certificado de defuncion';

  @override
  String get dynamic_document_relationshipProof => 'Prueba de parentesco';

  @override
  String get dynamic_document_relationshipProofDesc =>
      'Certificado de matrimonio, certificado de nacimiento o documentos de adopcion';

  @override
  String get dynamic_document_covidDeathCertificateDesc =>
      'Debe atribuir la muerte a COVID-19';

  @override
  String get dynamic_document_funeralReceipts => 'Recibos de gastos funerarios';

  @override
  String get dynamic_document_funeralReceiptsDesc =>
      'Recibos detallados o contratos de proveedores funerarios';

  @override
  String get dynamic_document_usResidency => 'Prueba de residencia en EE. UU.';

  @override
  String get dynamic_document_usResidencyDesc =>
      'Para la persona que asumio los gastos funerarios';

  @override
  String get dynamic_document_femaAppNumber => 'Numero de solicitud de FEMA';

  @override
  String get dynamic_document_femaAppNumberDesc =>
      'Si ya solicito otra asistencia de FEMA';

  @override
  String get lang_en => 'English';

  @override
  String get lang_es => 'Español';

  @override
  String get brand_name => 'Benefits Digger';

  @override
  String get brand_tagline =>
      'Encuentre todos los beneficios para los que puede calificar. Respaldado por fuentes oficiales.';

  @override
  String get nav_screen => 'Evaluar';

  @override
  String get nav_chat => 'Asistente';

  @override
  String get nav_programs => 'Programas';

  @override
  String get nav_skipToContent => 'Saltar al contenido principal';

  @override
  String get nav_openMenu => 'Abrir menu';

  @override
  String get nav_closeMenu => 'Cerrar menu';

  @override
  String get theme_toggle => 'Cambiar tema';

  @override
  String get theme_light => 'Claro';

  @override
  String get theme_dark => 'Oscuro';

  @override
  String get theme_system => 'Sistema';

  @override
  String get language_switcher => 'Idioma';

  @override
  String get landing_eyebrow => 'Planifique con confianza';

  @override
  String get landing_heroTitle =>
      'Vea todos los beneficios gubernamentales para los que podria calificar.';

  @override
  String get landing_heroLede =>
      'Benefits Digger lo guia en una breve conversacion, lo evalua frente a programas federales y estatales, y respalda cada coincidencia con una fuente oficial.';

  @override
  String get landing_startScreening => 'Iniciar evaluacion';

  @override
  String get landing_startScreeningHint =>
      'Recorrido de cinco minutos. Privado. No requiere cuenta.';

  @override
  String get landing_askAssistant => 'Preguntar al asistente';

  @override
  String get landing_askAssistantHint =>
      'Describa su situacion con sus propias palabras.';

  @override
  String get landing_browsePrograms => 'Explorar programas';

  @override
  String get landing_browseProgramsHint =>
      'Busque en el catalogo oficial de programas.';

  @override
  String get landing_howItWorksTitle => 'Como funciona';

  @override
  String get landing_howItWorksLede =>
      'Tres pasos que respetan su tiempo y su situacion.';

  @override
  String get landing_step1Title => 'Cuentenos que esta pasando';

  @override
  String get landing_step1Body =>
      'Escriba una frase sobre su situacion o responda algunas preguntas breves. Convertimos su historia en una evaluacion estructurada.';

  @override
  String get landing_step2Title => 'Comparamos con reglas oficiales';

  @override
  String get landing_step2Body =>
      'Cada programa se evalua segun las reglas federales o estatales mas recientes. Cuando faltan datos, lo decimos claramente.';

  @override
  String get landing_step3Title => 'Vayase con un plan';

  @override
  String get landing_step3Body =>
      'Obtenga una lista de siguientes pasos, los documentos que necesitara y enlaces directos a las paginas oficiales de solicitud.';

  @override
  String get landing_trustTitle => 'Por que la gente confia en los resultados';

  @override
  String get landing_trustOfficial => 'Tomado de documentos oficiales .gov';

  @override
  String get landing_trustOfficialBody =>
      'Cada coincidencia se basa en reglas publicadas por las agencias y se vincula a la pagina original.';

  @override
  String get landing_trustPrivate => 'Privado por defecto';

  @override
  String get landing_trustPrivateBody =>
      'Sus respuestas permanecen en su navegador. Nunca vendemos, compartimos ni le pedimos crear una cuenta.';

  @override
  String get landing_trustExplainable => 'Confianza explicable';

  @override
  String get landing_trustExplainableBody =>
      'Mostramos por que cada programa coincidio, que falta y que tan segura es la evaluacion.';

  @override
  String get landing_comingSoon => 'Proximamente';

  @override
  String get landing_comingSoonBody =>
      'Esta seccion de Benefits Digger esta en construccion. Vuelva pronto.';

  @override
  String get landing_notFoundTitle => 'No encontramos esa pagina';

  @override
  String get landing_notFoundBody =>
      'La pagina que busca se movio o no existe.';

  @override
  String get landing_notFoundCta => 'Volver al inicio';

  @override
  String get landing_errorTitle => 'Algo salio mal';

  @override
  String get landing_errorBody =>
      'Ocurrio un error inesperado al cargar esta pagina. Intente nuevamente; si persiste, el equipo ha sido notificado.';

  @override
  String get landing_errorRetry => 'Intentar de nuevo';

  @override
  String get landing_loading => 'Cargando...';

  @override
  String get footer_disclaimer =>
      'Benefits Digger es una herramienta de evaluacion independiente. No esta afiliada, respaldada ni operada por el gobierno federal de EE. UU. ni por ninguna agencia estatal. La elegibilidad final la determina la agencia que opera el beneficio.';

  @override
  String get footer_privacy => 'Privacidad';

  @override
  String get footer_sources => 'Fuentes oficiales';

  @override
  String get footer_about => 'Acerca';

  @override
  String footer_copyright(String year) {
    return '$year Benefits Digger';
  }

  @override
  String get helpBot_title => 'Ayuda con esta aplicación';

  @override
  String get helpBot_placeholder => 'Pregunte cómo usar la aplicación…';

  @override
  String get helpBot_openLabel => 'Obtener ayuda con esta aplicación';

  @override
  String get helpBot_emptyState =>
      'Pregunte cómo usar una función, navegar a una página o entender una pregunta del evaluador. (Para preguntas sobre beneficios use el chat principal.)';

  @override
  String get helpBot_streaming => 'Pensando…';

  @override
  String get helpBot_error =>
      'No se pudo conectar con el asistente de ayuda. Intente de nuevo en un momento.';

  @override
  String get helpBot_close => 'Cerrar ayuda';
}
