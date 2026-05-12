import 'package:flutter/material.dart';

class ChatEmptyState extends StatelessWidget {
  const ChatEmptyState({super.key, required this.onPromptTap});

  final ValueChanged<String> onPromptTap;

  static const List<({String title, String prompt})> _prompts = <({String title, String prompt})>[
    (title: 'What papers do I bring?', prompt: 'What documents should I bring when I apply for SNAP?'),
    (title: 'How long until SNAP starts?', prompt: 'After I apply for SNAP, how long until benefits start?'),
    (title: 'What if I work part-time?', prompt: 'How would working 20 hours a week affect my benefits?'),
    (title: 'Who do I call for help?', prompt: 'Where can I get free help applying for benefits?'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'How can I help?',
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Ask about benefits, eligibility, application steps, or what to bring. '
            'The assistant uses official sources where possible.',
            style: TextStyle(color: scheme.onSurfaceVariant),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final p in _prompts)
                ActionChip(
                  label: Text(p.title),
                  onPressed: () => onPromptTap(p.prompt),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
