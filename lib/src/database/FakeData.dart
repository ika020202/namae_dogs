import 'package:namae_dogs/src/model/Genre.dart';
import 'package:namae_dogs/src/model/Person.dart';

class FakeData {
  static final List<Genre> fakeGenres = [
    Genre(name: "Cats", image: "assets/images/cat.png"),
    Genre(name: "Dogs", image: "assets/images/dog.png"),
    Genre(name: "Rabbit", image: "assets/images/rabbit.png"),
    Genre(name: "Horses", image: "assets/images/horse.png"),
    Genre(name: "Dogs", image: "assets/images/dog.png"),
    Genre(name: "Dogs", image: "assets/images/dog.png"),
  ];

  static final List<Genre> genresList = <Genre>[
    Genre(name: "baseball", image: "assets/images/genre_icons/baseball.svg"),
    Genre(name: "boxcar", image: "assets/images/genre_icons/boxcar.svg"),
    Genre(name: "eraser", image: "assets/images/genre_icons/eraser.svg"),
    Genre(name: "home", image: "assets/images/genre_icons/home.svg"),
    Genre(name: "pc", image: "assets/images/genre_icons/pc.svg"),
    Genre(name: "piano", image: "assets/images/genre_icons/piano.svg"),
    Genre(name: "piano2", image: "assets/images/genre_icons/piano.svg"),
    Genre(name: "piano3", image: "assets/images/genre_icons/piano.svg"),
    Genre(name: "piano4", image: "assets/images/genre_icons/piano.svg"),
    Genre(
        name:
            "piano5aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
        image: "assets/images/genre_icons/piano.svg"),
  ];

  static final List<Person> personList = <Person>[
    Person(
      avator: Avator(),
      genreName: "baseball",
      name: "TestKun1",
      like: false,
      firstDescription: "TestKun1の説明文です。",
      secondDescription: "TestKun1のSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "baseball",
      name: "TestChanDesu",
      like: true,
      firstDescription: "TestChanDesuの説明文です。",
      secondDescription: "TestChanDesuのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
    Person(
      avator: Avator(),
      genreName: "boxcar",
      name: "BoxCarPerson",
      like: true,
      firstDescription: "BoxCarPersonの説明文です。",
      secondDescription: "BoxCarPersonのSecondDescriptionです。",
    ),
  ];
}
