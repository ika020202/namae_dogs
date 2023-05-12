import 'package:flutter/material.dart';
import 'package:namae_dogs/src/constants/app_sizes.dart';
import 'package:namae_dogs/src/features/addPerson/sample_data.dart';

// TODO: Categoriesは仮実装
class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: categories
          .map(
            (category) => Container(
                margin: const EdgeInsets.only(right: 25.0),
                child: Column(
                  children: <Widget>[
                    BorderBox(
                      color: category['active'] ? Colors.amber : Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      width: 65.0,
                      height: 65.0,
                      child: Image(
                        image: AssetImage('${category["icon"]}'),
                        fit: BoxFit.contain,
                        color: category['active'] ? Colors.white : Colors.amber,
                      ),
                    ),
                    gapH16,
                    Text(
                      category['name'],
                    )
                  ],
                )),
          )
          .toList(),
    );
  }
}

class BorderBox extends StatelessWidget {
  const BorderBox({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.padding,
    this.color,
  });

  final double width;
  final double height;
  final EdgeInsets? padding;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(12.0),
        color: color ?? Colors.white,
        // boxShadow: myShadow,
      ),
      child: child,
    );
  }
}
