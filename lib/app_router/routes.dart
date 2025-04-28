import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';
import 'package:nutrition_tracker/overview/view/overview_page.dart';
import 'package:nutrition_tracker/profile/view/profile_page.dart';

final $rootNavigatorKey = GlobalKey<NavigatorState>();

enum AppRoute {
  home,
  profile,
}

class RouteConfig {
  const RouteConfig({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}

final Map<AppRoute, RouteConfig> _routes = {
  AppRoute.home: const RouteConfig(
    name: 'overview',
    path: '/overview',
  ),
  AppRoute.profile: const RouteConfig(
    name: 'profile',
    path: '/profile',
  ),
};

final router = GoRouter(
  initialLocation: '/overview',
  navigatorKey: $rootNavigatorKey,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: SafeArea(child: child),
          bottomNavigationBar: NavigationBar(
            selectedIndex: state.matchedLocation == '/overview' ? 0 : 1,
            onDestinationSelected: (index) {
              switch (index) {
                case 0:
                  context.go('/overview');
                case 1:
                  context.go('/profile');
              }
            },
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.bar_chart_rounded),
                label: context.l10n.navigatorOverviewLabel,
              ),
              NavigationDestination(
                icon: const Icon(Icons.person),
                label: context.l10n.navigatorProfileLabel,
              ),
            ],
          ),
        );
      },
      routes: [
        GoRoute(
          path: _routes[AppRoute.home]!.path,
          name: _routes[AppRoute.home]!.name,
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: OverviewPage()),
        ),
        GoRoute(
          path: _routes[AppRoute.profile]!.path,
          name: _routes[AppRoute.profile]!.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ProfilePage(),
          ),
        ),
      ],
    ),
  ],
);
