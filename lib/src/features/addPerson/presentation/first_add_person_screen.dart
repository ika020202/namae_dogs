import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstAddPersonScreen extends ConsumerWidget {
  const FirstAddPersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text('Add Person 1'),
        ),
      ),
    );
  }
}
