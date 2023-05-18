import 'package:flutter/material.dart';
import 'package:namae_dogs/src/common/border_box_widget.dart';
import 'package:namae_dogs/src/constants/app_sizes.dart';
import 'package:namae_dogs/src/model/Genre.dart';

class GenreCardWidget extends StatelessWidget {
  final Genre genre;

  const GenreCardWidget({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // TODO: アクティブなセルだけ色を変えるロジックを実装する
        BorderBox(
          color: Colors.white,
          padding: const EdgeInsets.all(4.0),
          width: 60.0,
          height: 60.0,
          child: Image(
            image: AssetImage(genre.image),
            fit: BoxFit.contain,
            color: Colors.amber,
          ),
        ),
        gapH4,
        Text(
          genre.name,
        )
      ],
    );
  }
}
