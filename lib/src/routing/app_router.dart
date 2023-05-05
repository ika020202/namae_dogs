import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:namae_dogs/src/common_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:namae_dogs/src/features/home/presentation/home_screen.dart';
import 'package:namae_dogs/src/features/onboarding/onboarding_screen.dart';
import 'package:namae_dogs/src/features/your/presentation/your_screen.dart';
import 'package:namae_dogs/src/routing/not_found_screen.dart';
import 'package:namae_dogs/src/routing/bottom_nav_bar.dart';

part 'app_router.g.dart';

enum AppRoute {
  home,
  your,
  onboarding,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final showOnBoarding = ref.watch(showOnBoardingProvider);

  return GoRouter(
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/onboarding',
        name: AppRoute.onboarding.name,
        builder: (context, state) => const OnBoardingScreen(),
      ),

      // TODO: Implement with stateful nested navigation once this PR is merged:
      // https://github.com/flutter/packages/pull/2650
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BottomNavBar(child: child);
        },
        routes: [
          // Products
          GoRoute(
            path: '/home',
            name: AppRoute.home.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
            ),
          ),
          // Shopping Cart
          GoRoute(
            path: '/yourPage',
            name: AppRoute.your.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const YourScreen(),
            ),
          ),
        ],
      ),
    ],
    redirect: (context, state) => showOnBoarding ? '/onboarding' : null,
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
