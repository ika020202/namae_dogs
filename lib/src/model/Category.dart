import 'package:isar/isar.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'Category.g.dart';

@CopyWith()
@collection
class Category {
  Category({
    required this.name,
    required this.image,
  }) : id = Isar.autoIncrement;

  final Id id;
  final String name;
  final String image;
}
