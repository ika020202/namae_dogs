import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:namae_dogs/src/localization/app_localizations_context.dart';
import 'package:namae_dogs/src/routing/app_router.dart';

// This is a temporary implementation
// TODO: Implement a better solution once this PR is merged:
// https://github.com/flutter/packages/pull/2650
class BottomNavBar extends HookWidget {
  const BottomNavBar({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    void tap(BuildContext context, int index) {
      if (selectedIndex.value == index) {
        return;
      }
      selectedIndex.value = index;
      if (index == 0) {
        context.goNamed(AppRoute.home.name);
      } else if (index == 1) {
        context.goNamed(AppRoute.your.name);
      }
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: context.loc.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.note_rounded),
            label: context.loc.yourPage,
          ),
        ],
        onTap: (index) => tap(context, index),
      ),
    );
  }
}
