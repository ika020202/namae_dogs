import 'package:isar/isar.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'Person.g.dart';

@CopyWith()
@collection
class Person {
  Person({
    required this.avator,
    required this.genreName,
    required this.name,
    required this.like,
    required this.firstDescription,
    required this.secondDescription,
  }) : id = Isar.autoIncrement;

  final Id id;
  /* MEMO: IsarLink<Genre>にしていない理由は色々あります。
  / ①Link元&先のIdを非Finalにすべきという公式推奨があるが、ImmutableProgrammingとCopyWithの観点から避けたい為。
  / ②Requiredに出来ないので初期化時に注意する必要がある。どちらにせよ初期化時にGenreと比較を行う必要があるので、Stringで持ってMatchしなければ未分類に投げる方がいい。
  / (本当はGenreNameをEnumで持ちたいが、カテゴリの種類はユーザーが指定するため初期化が困難。出来なくはないがEnumの持つ他範囲が絶対に選択されないという利点以上に欠点が多い。)
  */
  final String genreName;
  final Avator avator;
  final String name;
  final bool like;
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
