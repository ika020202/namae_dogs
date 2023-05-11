import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/common/indicator_widget/Indicator_widget.dart';
import 'package:namae_dogs/src/common/indicator_widget/indicator_provider.dart';
import 'package:namae_dogs/src/features/addPerson/presentation/first_add_person_screen.dart';
import 'package:namae_dogs/src/localization/string_hardcoded.dart';
import 'package:namae_dogs/src/routing/app_router.dart';

class AddPersonScreen extends ConsumerWidget {
  const AddPersonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index) {
            ref.read(counterProvider.notifier).setIndex(index);
          },
          children: [
            const FirstAddPersonScreen(),
            Container(
              color: Colors.indigo,
              child: Center(
                child: Text('Add Person 2'.hardcoded),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text('Add Person 3'.hardcoded),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
          height: 100,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text('戻る'.hardcoded),
                  onPressed: () {
                    context.goNamed(AppRoute.home.name);
                  },
                ),
                const Center(
                  child: IndicatorWidget(
                      pageCount: 3,
                      activeColor: Colors.blue,
                      nonActiveColor: Colors.grey),
                ),
                ElevatedButton(
                  child: Text('進む'.hardcoded),
                  onPressed: () {
                    // TODO: 設計自体を見直し中。
                  },
                ),
              ],
            ),
          )),
    );
  }
}
