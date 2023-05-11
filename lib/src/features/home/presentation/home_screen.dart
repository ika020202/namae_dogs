import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/features/home/presentation/widgets/category_grid_widget.dart';
import 'package:namae_dogs/src/routing/app_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.goNamed(AppRoute.addPerson.name);
            },
          )
        ],
      ),
      body: const CategoryGridWidget(),
    );
  }
}
