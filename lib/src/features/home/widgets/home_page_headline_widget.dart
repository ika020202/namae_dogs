import 'package:flutter/material.dart';

class HomePageHeadline extends StatelessWidget {
  final String headline;

  const HomePageHeadline({
    super.key,
    required this.headline,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(
        headline,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
