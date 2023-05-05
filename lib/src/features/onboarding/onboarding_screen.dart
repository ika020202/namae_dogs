import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/features/onboarding/pageIndicator/Indicator_widget.dart';
import 'package:namae_dogs/src/features/onboarding/pageIndicator/indicator_provider.dart';

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
              child: const Center(
                child: Text('OnBoarding 1'),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: const Center(
                child: Text('OnBoarding 2'),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text('OnBoarding 3'),
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
                child: const Text('Skip'),
                onPressed: () {},
              ),
              const Center(
                child: IndicatorWidget(
                    pageCount: 3,
                    activeColor: Colors.blue,
                    nonActiveColor: Colors.grey),
              ),
              ElevatedButton(
                child: const Text('Next'),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}
