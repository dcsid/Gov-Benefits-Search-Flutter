import 'package:benefits_digger/core/api/models/admin.dart';
import 'package:benefits_digger/core/api/models/chat.dart';
import 'package:benefits_digger/core/api/models/explorer.dart';
import 'package:benefits_digger/core/api/models/health.dart';
import 'package:benefits_digger/core/api/models/intake.dart';
import 'package:benefits_digger/core/api/models/llm.dart';
import 'package:benefits_digger/core/api/models/program.dart';
import 'package:benefits_digger/core/api/models/session.dart';
import 'package:benefits_digger/core/api/models/state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Model JSON round-trip', () {
    test('StateInfo', () {
      final json = <String, dynamic>{'code': 'NY', 'name': 'New York'};
      final m = StateInfo.fromJson(json);
      expect(m.code, 'NY');
      expect(m.name, 'New York');
      expect(m.toJson(), json);
    });

    test('Program (catalog payload from list_program_catalog)', () {
      final json = <String, dynamic>{
        'slug': 'snap',
        'name': 'SNAP',
        'kind': 'benefit',
        'category': 'food',
        'family': 'food',
        'summary': 'Food assistance',
        'jurisdiction': <String, dynamic>{
          'code': 'federal',
          'level': 'federal',
          'name': 'Federal',
        },
        'agency': 'USDA',
        'apply_url': 'https://example.gov/apply',
        'data_gathered_from': <Map<String, dynamic>>[
          <String, dynamic>{'title': 'USDA SNAP', 'url': 'https://usda.gov'},
        ],
      };
      final m = Program.fromJson(json);
      expect(m.slug, 'snap');
      expect(m.jurisdiction?.code, 'federal');
      expect(m.dataGatheredFrom.first.url, 'https://usda.gov');
      expect(Program.fromJson(m.toJson()), m);
    });

    test('ProgramDetail with rules and sources', () {
      final json = <String, dynamic>{
        'slug': 'snap',
        'name': 'SNAP',
        'kind': 'benefit',
        'category': 'food',
        'family': 'food',
        'summary': 's',
        'apply_url': null,
        'documents': <Map<String, dynamic>>[],
        'jurisdiction': <String, dynamic>{
          'code': 'federal',
          'level': 'federal',
          'name': 'Federal',
        },
        'agency': null,
        'version_label': 'v1',
        'rules': <Map<String, dynamic>>[
          <String, dynamic>{
            'question_key': 'household_size',
            'label': 'Household size',
            'expected_values': <int>[1, 2, 3],
          },
        ],
        'data_gathered_from': <Map<String, dynamic>>[],
        'how_to_get_benefit': <Map<String, dynamic>>[],
        'sources': <Map<String, dynamic>>[],
      };
      final m = ProgramDetail.fromJson(json);
      expect(m.rules.first.questionKey, 'household_size');
      expect(m.rules.first.expectedValues, <int>[1, 2, 3]);
      expect(ProgramDetail.fromJson(m.toJson()), m);
    });

    test('ExplorerSearchRequest + ExplorerSearchResponse', () {
      final reqJson = <String, dynamic>{
        'query': 'food',
        'description': '',
        'scope': 'both',
        'state_code': 'NY',
        'categories': <String>['food'],
        'limit': 10,
        'use_llm': false,
      };
      final req = ExplorerSearchRequest.fromJson(reqJson);
      expect(req.toJson(), reqJson);

      final resJson = <String, dynamic>{
        'mode': 'hybrid',
        'interpretation': <String, dynamic>{'method': 'heuristic'},
        'programs': <Map<String, dynamic>>[
          <String, dynamic>{
            'slug': 'snap',
            'name': 'SNAP',
            'data_gathered_from': <Map<String, dynamic>>[],
            'match_reasons': <String>['food'],
            'search_score': 12,
          },
        ],
      };
      final res = ExplorerSearchResponse.fromJson(resJson);
      expect(res.mode, 'hybrid');
      expect(res.programs.first.searchScore, 12);
      expect(ExplorerSearchResponse.fromJson(res.toJson()), res);
    });

    test('IntakeResponse with next_probe and structured_facts', () {
      final json = <String, dynamic>{
        'summary': 'Looking for food assistance',
        'chat_reply': 'Got it.',
        'suggested_scope': 'both',
        'applied_state_code': 'NY',
        'suggested_categories': <Map<String, dynamic>>[
          <String, dynamic>{'key': 'food', 'label': 'Food'},
        ],
        'structured_facts': <Map<String, dynamic>>[
          <String, dynamic>{
            'key': 'household_size',
            'label': 'Household',
            'value': '3',
          },
        ],
        'current_facts': <String, dynamic>{'household_size': 3},
        'prefill_answers': <String, dynamic>{},
        'follow_up_questions': <Map<String, dynamic>>[],
        'next_probe': <String, dynamic>{
          'key': 'has_dependents',
          'prompt': 'Do you have dependents?',
          'question_type': 'yes_no',
          'options': <Map<String, dynamic>>[],
        },
        'navigation_actions': <Map<String, dynamic>>[],
        'interpretation_method': 'heuristic',
        'llm_used': false,
        'assistant_method': 'deterministic',
      };
      final m = IntakeResponse.fromJson(json);
      expect(m.suggestedCategories.first.key, 'food');
      expect(m.nextProbe?.key, 'has_dependents');
      expect(IntakeResponse.fromJson(m.toJson()), m);
    });

    test('SessionEnvelope + QuestionOut', () {
      final json = <String, dynamic>{
        'session_id': 's-1',
        'next_question': <String, dynamic>{
          'key': 'state_code',
          'prompt': 'What state?',
          'hint': null,
          'input_type': 'select',
          'sensitivity_level': 'low',
          'options': <Map<String, dynamic>>[
            <String, dynamic>{'label': 'New York', 'value': 'NY'},
          ],
        },
        'provisional_result_count': 5,
        'program_count': 12,
      };
      final m = SessionEnvelope.fromJson(json);
      expect(m.sessionId, 's-1');
      expect(m.nextQuestion?.key, 'state_code');
      expect(m.programCount, 12);
      expect(SessionEnvelope.fromJson(m.toJson()), m);
    });

    test('SessionResults preserves federal/state buckets', () {
      final json = <String, dynamic>{
        'session_id': 's-1',
        'federal_results': <Map<String, dynamic>>[
          _programResultFixture('snap'),
        ],
        'state_results': <Map<String, dynamic>>[
          _programResultFixture('ny-tap'),
        ],
      };
      final m = SessionResults.fromJson(json);
      expect(m.sessionId, 's-1');
      expect(m.federalResults.single.programSlug, 'snap');
      expect(m.stateResults.single.programSlug, 'ny-tap');
      expect(SessionResults.fromJson(m.toJson()), m);
    });

    test('SessionPlan keeps overview totals', () {
      final json = <String, dynamic>{
        'profile': <String, dynamic>{'name': 'Profile'},
        'overview': <String, dynamic>{
          'likely_programs': 3,
          'possible_programs': 1,
          'likely_federal_programs': 2,
          'likely_state_programs': 1,
          'average_rule_coverage': 80,
          'answered_questions': 10,
          'next_question_key': null,
          'estimated_monthly_total': 750,
        },
        'benefit_stack': <Map<String, dynamic>>[],
        'top_missing_facts': <Map<String, dynamic>>[],
        'action_plan': <Map<String, dynamic>>[],
        'official_source_hub': <Map<String, dynamic>>[],
        'planning_notes': <String>['Note 1'],
        'document_checklist': <Map<String, dynamic>>[],
      };
      final m = SessionPlan.fromJson(json);
      expect(m.overview.likelyPrograms, 3);
      expect(m.overview.estimatedMonthlyTotal, 750);
      expect(m.planningNotes, <String>['Note 1']);
      expect(SessionPlan.fromJson(m.toJson()), m);
    });

    test('SessionCompare with one scenario', () {
      final json = <String, dynamic>{
        'session_id': 's-1',
        'baseline': <String, dynamic>{'overview': <String, dynamic>{}},
        'comparisons': <Map<String, dynamic>>[
          <String, dynamic>{
            'name': 'Scenario A',
            'description': 'desc',
            'answer_overrides': <String, dynamic>{'income': 0},
            'summary': <String, dynamic>{'gained': 1},
            'gained_programs': <Map<String, dynamic>>[],
            'improved_programs': <Map<String, dynamic>>[],
            'lost_programs': <Map<String, dynamic>>[],
          },
        ],
      };
      final m = SessionCompare.fromJson(json);
      expect(m.comparisons.single.name, 'Scenario A');
      expect(SessionCompare.fromJson(m.toJson()), m);
    });

    test('ChatMessage and ChatStreamRequest', () {
      final reqJson = <String, dynamic>{
        'session_id': 's-1',
        'messages': <Map<String, dynamic>>[
          <String, dynamic>{'role': 'user', 'content': 'hi'},
        ],
        'context_mode': 'screening',
        'program_slug': null,
        'model': null,
      };
      final m = ChatStreamRequest.fromJson(reqJson);
      expect(m.contextMode, 'screening');
      expect(m.messages.single.role, 'user');
      expect(ChatStreamRequest.fromJson(m.toJson()), m);
    });

    test('LlmCompleteRequest + Response', () {
      final req = LlmCompleteRequest(
        messages: const <ChatMessage>[ChatMessage(role: 'user', content: 'hi')],
        model: 'gemini-2.0',
        jsonMode: true,
      );
      expect(LlmCompleteRequest.fromJson(req.toJson()), req);

      final resJson = <String, dynamic>{
        'content': 'hello',
        'model': 'gemini-2.0',
        'prompt_name': 'chat.general_assistant',
        'finish_reason': 'stop',
        'usage': <String, dynamic>{'prompt_tokens': 10, 'completion_tokens': 4},
        'latency_ms': 250,
        'fallback_used': false,
      };
      final res = LlmCompleteResponse.fromJson(resJson);
      expect(res.content, 'hello');
      expect(res.usage['prompt_tokens'], 10);
      expect(LlmCompleteResponse.fromJson(res.toJson()), res);
    });

    test('HealthCheck', () {
      final json = <String, dynamic>{
        'status': 'ok',
        'db': 'ok',
        'llm': 'missing_credential',
      };
      final m = HealthCheck.fromJson(json);
      expect(m.status, 'ok');
      expect(m.llm, 'missing_credential');
      expect(HealthCheck.fromJson(m.toJson()), m);
    });

    test('ReviewTask + SyncReport', () {
      final taskJson = <String, dynamic>{
        'id': 't1',
        'status': 'open',
        'created_at': '2026-05-09T10:00:00Z',
        'notes': null,
        'diff_type': 'eligibility',
        'materiality_score': 80,
        'source_title': 'USDA',
        'source_url': 'https://usda.gov',
      };
      final t = ReviewTask.fromJson(taskJson);
      expect(t.id, 't1');
      expect(t.materialityScore, 80);
      expect(ReviewTask.fromJson(t.toJson()), t);

      final syncJson = <String, dynamic>{
        'federal': 'synced',
        'states': 'synced',
        'review_tasks_created': 2,
        'crawled_programs': 5,
        'crawl_sources_added': 3,
        'review_tasks': <Map<String, dynamic>>[taskJson],
      };
      final s = SyncReport.fromJson(syncJson);
      expect(s.reviewTasksCreated, 2);
      expect(s.reviewTasks.single.id, 't1');
      expect(SyncReport.fromJson(s.toJson()), s);
    });
  });
}

Map<String, dynamic> _programResultFixture(String slug) => <String, dynamic>{
      'program_slug': slug,
      'program_name': slug.toUpperCase(),
      'kind': 'benefit',
      'category': 'food',
      'family': 'food',
      'eligibility_status': 'likely_eligible',
      'decision_certainty': 80,
      'certainty_breakdown': <String, dynamic>{
        'rule_coverage': 90,
        'source_authority': 95,
        'source_freshness': 80,
        'program_determinism': 70,
        'amount_determinism': 60,
      },
      'estimated_amount': <String, dynamic>{
        'certainty': 'estimated',
        'display': 'Up to \$300/month',
        'calculated': true,
      },
      'summary': 'Test',
      'jurisdiction': <String, dynamic>{
        'level': 'federal',
        'code': 'federal',
        'name': 'Federal',
      },
      'agency': 'USDA',
      'apply_url': null,
      'matched_reasons': <String>['Income below threshold'],
      'missing_facts': <String>[],
      'failed_reasons': <String>[],
      'documents': <Map<String, dynamic>>[],
      'data_gathered_from': <Map<String, dynamic>>[],
      'how_to_get_benefit': <Map<String, dynamic>>[],
      'sources': <Map<String, dynamic>>[],
    };
