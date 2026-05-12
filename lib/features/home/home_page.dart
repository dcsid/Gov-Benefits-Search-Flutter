import 'package:flutter/material.dart';

import '../../widgets/chrome/bd_footer.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/marketing/hero.dart';
import '../../widgets/marketing/how_it_works.dart';
import '../../widgets/marketing/landing_sections.dart';
import '../../widgets/marketing/trust_signals.dart';
import '../../widgets/ui/bd_separator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RepaintBoundary(
              child: BdHeader(variant: BdHeaderVariant.landing),
            ),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // Each marketing block sits in its own RepaintBoundary
                  // so scrolling only repaints the section under the
                  // viewport instead of the full landing tree.
                  children: [
                    RepaintBoundary(child: BdHero()),
                    BdSeparator(),
                    RepaintBoundary(child: BdHowItWorks()),
                    BdSeparator(),
                    RepaintBoundary(child: BdCategories()),
                    BdSeparator(),
                    RepaintBoundary(child: BdTrustSignals()),
                    BdSeparator(),
                    RepaintBoundary(child: BdHonesty()),
                  ],
                ),
              ),
            ),
            const RepaintBoundary(child: BdFooter()),
          ],
        ),
      ),
    );
  }
}
