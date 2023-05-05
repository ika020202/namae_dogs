import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class YourScreen extends ConsumerWidget {
  const YourScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Screen')),
      body: const Center(child: Text("YourScreen")),
    );
  }
}
