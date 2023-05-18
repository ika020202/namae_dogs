import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/common/genre_widgets/genre_card_widget.dart';
import 'package:namae_dogs/src/constants/app_sizes.dart';
import 'package:namae_dogs/src/database/db_service_provider.dart';

// TODO: Genresは仮実装
class GenresWidget extends ConsumerWidget {
  const GenresWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genres = ref.watch(dBServiceProvider.notifier).getAllGenres();
    return SizedBox(
      height: 90,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        separatorBuilder: (context, index) {
          return gapW12;
        },
        itemBuilder: (context, index) {
          return GenreCardWidget(genre: genres[index]);
        },
      ),
    );
  }
}
