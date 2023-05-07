import 'package:namae_dogs/src/common/empty_placeholder_widget.dart';
import 'package:flutter/material.dart';
import 'package:namae_dogs/src/localization/app_localizations_context.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: EmptyPlaceholderWidget(
        message: context.loc.error404,
      ),
    );
  }
}
