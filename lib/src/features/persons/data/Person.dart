import 'package:isar/isar.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'Person.g.dart';

@CopyWith()
@collection
class Person {
  Person({
    required this.avator,
    required this.name,
    required this.like,
    required this.firstDescription,
    required this.secondDescription,
  }) : id = Isar.autoIncrement;

  final Id id;
  final Avator avator;
  final String name;
  final int like;
  final String firstDescription;
  final String secondDescription;
}

@embedded
class Avator {
  Avator({
    this.head = Head.normal,
    this.eye = Eye.normal,
    this.accessory = Accessory.none,
    this.option = Option.none,
  });
  @enumerated
  final Head head;

  @enumerated
  final Eye eye;

  @enumerated
  final Accessory accessory;

  @enumerated
  final Option option;
}

enum Head { normal, pony, cut }

enum Eye { normal, up, down }

enum Accessory { none, hat, glasses }

enum Option { none, smile, cry }
