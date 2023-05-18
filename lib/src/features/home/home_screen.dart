import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/common/genre_widgets/genres_widget.dart';
import 'package:namae_dogs/src/database/FakeData.dart';
import 'package:namae_dogs/src/features/home/widgets/home_page_headline_widget.dart';
import 'package:namae_dogs/src/features/home/widgets/person_card_widget.dart';
import 'package:namae_dogs/src/localization/string_hardcoded.dart';
import 'package:namae_dogs/src/routing/app_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personList = FakeData.personList;
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // ListViewも付き添ってスクロールできるように実装しています。
        // ref: https://blog.pentagon.tokyo/1332/
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomePageHeadline(headline: "Genres".hardcoded),
                  const GenresWidget(),
                  HomePageHeadline(headline: "Lists".hardcoded),
                ],
              ),
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                final person = personList[index];
                return PersonCard(person: person);
              }, childCount: personList.length),
            )
          ],
        ),
      ),
    );
  }
}
