import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:namae_dogs/src/database/onboarding_provider.dart';
import 'package:namae_dogs/src/features/addPerson/add_person_screen.dart';
import 'package:namae_dogs/src/features/persons_list/persons_list_screen.dart';
import 'package:namae_dogs/src/features/search/presentation/search_screen.dart';
import 'package:namae_dogs/src/features/settings_page/pages/this_app_info_screen.dart';
import 'package:namae_dogs/src/features/settings_page/pages/update_Schedules.dart';
import 'package:namae_dogs/src/features/settings_page/settings_screen.dart';
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
  addPerson,
  personList,
  settings,
  thisAppInfo,
  updateSchedules,
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
      GoRoute(
        path: "/addPerson",
        name: AppRoute.addPerson.name,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            fullscreenDialog: true,
            child: const AddPersonScreen(),
          );
        },
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
              routes: [
                GoRoute(
                    // TODO: Hardcoded pathを辞めたい。GoRouterBuilderを使えば解決するが動作が不安定っぽい
                    path: 'personList/:categoryName',
                    name: AppRoute.personList.name,
                    builder: (context, state) {
                      final categoryName = state.params["categoryName"];
                      return PersonListScreen(categoryName: categoryName ?? "");
                    }),
              ]),
          // Shopping Cart
          GoRoute(
            path: '/search',
            name: AppRoute.search.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SearchScreen(),
            ),
          ),
          GoRoute(
            path: '/settings',
            name: AppRoute.settings.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SettingsScreen(),
            ),
            routes: [
              GoRoute(
                path: 'thisAppInfo',
                name: AppRoute.thisAppInfo.name,
                builder: (context, state) => const ThisAppInfoPage(),
              ),
              GoRoute(
                path: 'updateSchedules',
                name: AppRoute.updateSchedules.name,
                builder: (context, state) => const UpdateSchedules(),
              ),
            ],
          ),
        ],
      ),
    ],
    // redirect: (context, state) => showOnBoarding ? '/onboarding' : null,
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
