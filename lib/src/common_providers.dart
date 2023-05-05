import 'package:isar/isar.dart';
import 'package:namae_dogs/src/features/persons/data/Person.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'common_providers.g.dart';

final sharedPreferencesProvider =
    Provider<SharedPreferences>((_) => throw UnimplementedError());

@Riverpod(keepAlive: true)
bool showOnBoarding(ShowOnBoardingRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  // return prefs.getBool('showOnBoarding') ?? true;
  // ! デバッグのためにfalseにしている
  return prefs.getBool('showOnBoarding') ?? false;
}

@Riverpod(keepAlive: true)
class DBService extends _$DBService {
  late Isar isar;

  @override
  FutureOr<Isar> build() async {
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open([PersonSchema], directory: dir.path);
  }

  Future<void> addPerson(Person person) async {
    await isar.persons.put(person);
  }

  Future<IsarCollection<Person>> getAllPersons() async {
    return isar.persons;
  }

  Future<void> deletePerson(int id) async {
    await isar.persons.delete(id);
  }
}
