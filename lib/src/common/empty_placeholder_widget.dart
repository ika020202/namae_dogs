import 'package:namae_dogs/src/common/primary_button.dart';
import 'package:namae_dogs/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:namae_dogs/src/constants/app_sizes.dart';
import 'package:namae_dogs/src/localization/app_localizations_context.dart';
import 'package:go_router/go_router.dart';

/// Placeholder widget showing a message and CTA to go back to the home screen.
class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            gapH32,
            PrimaryButton(
              onPressed: () => context.goNamed(AppRoute.home.name),
              text: context.loc.goHome,
            )
          ],
        ),
      ),
    );
  }
}
