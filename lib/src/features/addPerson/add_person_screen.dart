import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/common/namae_dog_text_field_widget.dart';
import 'package:namae_dogs/src/constants/app_sizes.dart';
import 'package:namae_dogs/src/features/addPerson/categories_widget.dart';
import 'package:namae_dogs/src/localization/string_hardcoded.dart';

class AddPersonScreen extends ConsumerWidget {
  const AddPersonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // -- Template AppBar
      appBar: AppBar(
        title: Text("このアプリについて".hardcoded),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              color: Colors.red,
            ),
            gapH16,
            const NamaeDogTextField(
              hint: "名前",
              leadingIcon: Icons.person,
            ),
            gapH16,
            const Categories()
          ],
        ),
      ),
    );
  }
}
