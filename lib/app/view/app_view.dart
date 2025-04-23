import 'package:flutter/material.dart';
import 'package:nt_ui/nt_ui.dart';
import 'package:nutrition_tracker/app_router/routes.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: const NtTheme().themeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}
