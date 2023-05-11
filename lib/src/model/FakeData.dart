import 'package:namae_dogs/src/model/Category.dart';
import 'package:namae_dogs/src/model/Person.dart';

class FakeData {
  static final List<Category> categoriesList = <Category>[
    Category(
        name: "baseball", image: "assets/images/category_icons/baseball.svg"),
    Category(name: "boxcar", image: "assets/images/category_icons/boxcar.svg"),
    Category(name: "eraser", image: "assets/images/category_icons/eraser.svg"),
    Category(name: "home", image: "assets/images/category_icons/home.svg"),
    Category(name: "pc", image: "assets/images/category_icons/pc.svg"),
    Category(name: "piano", image: "assets/images/category_icons/piano.svg"),
    Category(name: "piano2", image: "assets/images/category_icons/piano.svg"),
    Category(name: "piano3", image: "assets/images/category_icons/piano.svg"),
    Category(name: "piano4", image: "assets/images/category_icons/piano.svg"),
    Category(
        name:
            "piano5aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
        image: "assets/images/category_icons/piano.svg"),
  ];

  static final List<Person> personList = <Person>[
    Person(
      avator: Avator(),
      categorName: "baseball",
      name: "TestKun1",
      like: false,
      firstDescription: "TestKun1の説明文です。",
      secondDescription: "TestKun1のSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      categorName: "baseball",
      name: "TestChanDesu",
      like: true,
      firstDescription: "TestChanDesuの説明文です。",
      secondDescription: "TestChanDesuのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      categorName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
  ];
}
