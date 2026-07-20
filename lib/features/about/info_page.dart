import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/chrome/bd_footer.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_button.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key, required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BdHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 760),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BdButton(
                        label: 'Back',
                        leading: const Icon(Icons.arrow_back),
                        variant: BdButtonVariant.ghost,
                        size: BdButtonSize.sm,
                        onPressed: () =>
                            context.canPop() ? context.pop() : context.go('/'),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(height: 12),
                      Text(body, style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ),
              ),
            ),
            const BdFooter(),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoPage(
      title: 'About Benefits Digger',
      body:
          'Benefits Digger is a free tool that helps people find the federal '
          'and state benefit programs they may qualify for. We are not '
          'affiliated with any government agency. We help you discover '
          'programs and apply on the official sites — we never apply for you.',
    );
  }
}

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoPage(
      title: 'Privacy',
      body:
          'We do not store your screening answers on our servers unless you '
          'explicitly choose to save a session. Answers live in your browser '
          'storage and can be cleared at any time. We do not sell or share '
          'personal information with third parties.',
    );
  }
}

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoPage(
      title: 'Terms',
      body:
          'Benefits Digger is provided as-is, without warranty of any kind. '
          'Eligibility results are estimates based on publicly published rules '
          'and do not guarantee actual program eligibility. Final determinations '
          'are made by the agency administering each program.',
    );
  }
}
