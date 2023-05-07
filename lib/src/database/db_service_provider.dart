import 'package:isar/isar.dart';
import 'package:namae_dogs/src/features/home/data/Person.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'db_service_provider.g.dart';

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
