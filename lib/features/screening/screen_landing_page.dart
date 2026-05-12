import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/api/models/session.dart';
import '../../core/api/providers.dart';
import '../../core/error/error_handler.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_button.dart';
import '../../widgets/ui/bd_card.dart';

class ScreenLandingPage extends ConsumerStatefulWidget {
  const ScreenLandingPage({super.key});

  @override
  ConsumerState<ScreenLandingPage> createState() => _ScreenLandingPageState();
}

class _ScreenLandingPageState extends ConsumerState<ScreenLandingPage> {
  bool _starting = false;
  String? _error;

  Future<void> _start() async {
    setState(() {
      _starting = true;
      _error = null;
    });
    try {
      final svc = ref.read(sessionsServiceProvider);
      final envelope =
          await svc.create(const SessionCreateRequest());
      if (!mounted) return;
      context.go('/screen/${envelope.sessionId}/q');
    } catch (e, st) {
      if (!mounted) return;
      showApiError(context, e, stackTrace: st);
      setState(() {
        _starting = false;
        _error = AppLocalizations.of(context)?.errors_generic ??
            'Something went wrong. Please try again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return Scaffold(
      body: Column(
        children: [
          const RepaintBoundary(
            child: BdHeader(variant: BdHeaderVariant.question),
          ),
          Expanded(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 720),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        (l10n?.home_questionFlow ?? 'Question flow')
                            .toUpperCase(),
                        style: TextStyle(
                          color: scheme.tertiary,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          letterSpacing: 1.4,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Tell us a little about your situation',
                        style: theme.textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'A handful of questions help us match you with programs that '
                        'actually fit your life.',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 32),
                      BdCard(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'What to expect',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const _Bullet(
                              text:
                                  'About 5 minutes of straightforward questions.',
                            ),
                            const _Bullet(
                              text:
                                  "You can skip or mark anything as 'I'm not sure'.",
                            ),
                            _Bullet(
                              text: l10n?.home_trustPrivate ??
                                  'Your data is private and never stored.',
                            ),
                          ],
                        ),
                      ),
                      if (_error != null) ...<Widget>[
                        const SizedBox(height: 16),
                        Text(
                          _error!,
                          style: TextStyle(color: scheme.error),
                        ),
                      ],
                      const SizedBox(height: 24),
                      BdButton(
                        label: _starting
                            ? 'Starting...'
                            : (l10n?.home_startScreening ?? 'Start screening'),
                        variant: BdButtonVariant.accent,
                        size: BdButtonSize.lg,
                        trailing: const Icon(Icons.arrow_forward),
                        onPressed: _starting ? null : _start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Bullet extends StatelessWidget {
  const _Bullet({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Icon(Icons.circle, size: 6, color: scheme.tertiary),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: const TextStyle(fontSize: 14, height: 1.5)),
          ),
        ],
      ),
    );
  }
}
