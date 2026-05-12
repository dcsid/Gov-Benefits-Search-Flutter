import 'package:flutter/material.dart';

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.routeName, required this.terminal});

  final String routeName;
  final int terminal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(routeName)),
      body: Center(child: Text('TODO: implemented by Terminal $terminal')),
    );
  }
}

class HomePagePlaceholder extends StatelessWidget {
  const HomePagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) =>
      const _Placeholder(routeName: '/', terminal: 4);
}

class ExplorerPagePlaceholder extends StatelessWidget {
  const ExplorerPagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) =>
      const _Placeholder(routeName: '/explorer', terminal: 4);
}

class ProgramDetailPlaceholder extends StatelessWidget {
  const ProgramDetailPlaceholder({super.key, required this.slug});

  final String slug;

  @override
  Widget build(BuildContext context) =>
      _Placeholder(routeName: '/program/$slug', terminal: 4);
}

class WhatifPagePlaceholder extends StatelessWidget {
  const WhatifPagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) =>
      const _Placeholder(routeName: '/whatif', terminal: 5);
}

class ScreenLandingPlaceholder extends StatelessWidget {
  const ScreenLandingPlaceholder({super.key});

  @override
  Widget build(BuildContext context) =>
      const _Placeholder(routeName: '/screen', terminal: 5);
}

class ScreenQuestionPlaceholder extends StatelessWidget {
  const ScreenQuestionPlaceholder({super.key, required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context) =>
      _Placeholder(routeName: '/screen/$sessionId/q', terminal: 5);
}

class ResultsPlaceholder extends StatelessWidget {
  const ResultsPlaceholder({super.key, required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context) =>
      _Placeholder(routeName: '/results/$sessionId', terminal: 5);
}

class DashboardPlaceholder extends StatelessWidget {
  const DashboardPlaceholder({super.key, required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context) =>
      _Placeholder(routeName: '/dashboard/$sessionId', terminal: 5);
}

class ChatPagePlaceholder extends StatelessWidget {
  const ChatPagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) =>
      const _Placeholder(routeName: '/chat', terminal: 5);
}
