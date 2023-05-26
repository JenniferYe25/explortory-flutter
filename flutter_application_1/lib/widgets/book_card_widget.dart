import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class BookCardWidget extends StatelessWidget {
  final String title;
  final String cover;
  final bool ishome;

  const BookCardWidget(
      {super.key,
      required this.title,
      required this.cover,
      required this.ishome});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: kLight,
        ),
        child: SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(cover),
          ),
        ),
      ),
    );
  }
}
