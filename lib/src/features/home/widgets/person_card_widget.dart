import 'package:flutter/material.dart';
import 'package:namae_dogs/src/model/Person.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: person.avator,
        title: Text(person.name),
        subtitle: Text(person.firstDescription),
        trailing: person.like ? const Icon(Icons.favorite) : const SizedBox(),
        onTap: () {
          // TODO: 詳細画面に遷移する
        },
      ),
    );
  }
}
