import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:namae_dogs/src/routing/app_router.dart';

class CategoryCardWidget extends StatelessWidget {
  final String name;
  final String image;

  const CategoryCardWidget({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          context.goNamed(AppRoute.personList.name,
              params: {"categoryName": name});
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  image,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                )),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
