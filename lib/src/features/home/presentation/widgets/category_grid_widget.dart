import 'package:flutter/material.dart';
import 'package:namae_dogs/src/features/home/presentation/widgets/category_card_widget.dart';
import 'package:namae_dogs/src/model/Category.dart';
import 'package:namae_dogs/src/model/FakeData.dart';

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ! FakeDataです。本来はIsarDBから取得する
    List<Category> categories = FakeData.categoriesList;

    return GridView.builder(
      shrinkWrap: true,
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final category = categories[index];
        return CategoryCardWidget(
          name: category.name,
          image: category.image,
        );
      },
    );
  }
}
