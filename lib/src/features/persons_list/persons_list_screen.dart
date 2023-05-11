import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/features/home/data/FakeData.dart';

class PersonListScreen extends ConsumerWidget {
  const PersonListScreen({
    super.key,
    required this.categoryName,
  });
  final String categoryName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personList = FakeData.personList;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextField(
          //     decoration: const InputDecoration(
          //       hintText: 'Search',
          //       prefixIcon: Icon(Icons.search),
          //       border: OutlineInputBorder(),
          //     ),
          //     onChanged: (value) {
          //       // Implement your search functionality here
          //     },
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: personList.length,
              itemBuilder: (context, index) {
                final person = personList[index];
                return Card(
                  child: ListTile(
                    // leading: person.avator,
                    title: Text(person.name),
                    subtitle: Text(person.firstDescription),
                    trailing: person.like
                        ? const Icon(Icons.favorite)
                        : const SizedBox(),
                    onTap: () {
                      // Implement what happens when an item is tapped
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
