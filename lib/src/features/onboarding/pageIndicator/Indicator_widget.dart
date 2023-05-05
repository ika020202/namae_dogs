import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/features/onboarding/pageIndicator/indicator_provider.dart';

// IndicatorProviderで状態管理しています
class IndicatorWidget extends ConsumerWidget {
  final int pageCount;
  final Color activeColor;
  final Color nonActiveColor;

  const IndicatorWidget(
      {super.key,
      required this.pageCount,
      required this.activeColor,
      required this.nonActiveColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(counterProvider);

    List<Widget> indicators = [];

    for (int i = 0; i < pageCount; i++) {
      indicators.add(
        Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (selectedIndex == i) ? activeColor : nonActiveColor,
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }
}
