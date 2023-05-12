import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/constants/app_colors.dart';

class NamaeDogTextField extends ConsumerWidget {
  final String hint;
  final IconData leadingIcon;

  const NamaeDogTextField({
    super.key,
    required this.hint,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(left: 3, right: 10),
      height: 60.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorList.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          // TODO: 無い方がいいかも？
          BoxShadow(
            color: ColorList.shadow,
            offset: Offset(3.0, 4.0),
            blurRadius: 4.0,
          )
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 3, right: 10),
        height: 60.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorList.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: ColorList.shadow,
              offset: Offset(3.0, 4.0),
              blurRadius: 4.0,
            )
          ],
        ),
        child: TextFormField(
          onChanged: (value) {
            // TODO: 値を管理するProviderを用意する
          },
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(
              leadingIcon,
              size: 35,
            ),
            hintStyle: const TextStyle(
              fontSize: 20,
            ),
            filled: true,
            fillColor: ColorList.shadow,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
