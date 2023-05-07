import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:namae_dogs/src/database/onboarding_provider.dart';
import 'package:namae_dogs/src/features/search/presentation/search_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:namae_dogs/src/features/home/presentation/home_screen.dart';
import 'package:namae_dogs/src/features/onboarding/onboarding_screen.dart';
import 'package:namae_dogs/src/features/not_found/not_found_screen.dart';
import 'package:namae_dogs/src/routing/bottom_nav_bar.dart';

part 'app_router.g.dart';

enum AppRoute {
  home,
  search,
  onboarding,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  // TODO: OnBoarding実装のために用意。まだ使ってない
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
            path: '/search',
            name: AppRoute.search.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SearchScreen(),
            ),
          ),
        ],
      ),
    ],
    // redirect: (context, state) => showOnBoarding ? '/onboarding' : null,
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
