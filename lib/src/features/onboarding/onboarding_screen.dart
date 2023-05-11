import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/common/indicator_widget/Indicator_widget.dart';
import 'package:namae_dogs/src/common/indicator_widget/indicator_provider.dart';
import 'package:namae_dogs/src/localization/string_hardcoded.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({super.key});

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
            Container(
              color: Colors.red,
              child: Center(
                child: Text('OnBoarding 1'.hardcoded),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: Center(
                child: Text('OnBoarding 2'.hardcoded),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text('OnBoarding 3'.hardcoded),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text('Skip'.hardcoded),
                onPressed: () {},
              ),
              const Center(
                child: IndicatorWidget(
                    pageCount: 3,
                    activeColor: Colors.blue,
                    nonActiveColor: Colors.grey),
              ),
              ElevatedButton(
                child: Text('Next'.hardcoded),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}
