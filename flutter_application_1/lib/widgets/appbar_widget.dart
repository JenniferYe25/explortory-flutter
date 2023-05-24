import 'package:flutter/material.dart';
import './text_scaling.dart';
import '../constants/color_constants.dart';

class AppbarWidget extends StatelessWidget {
  final String title;

  const AppbarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextScaling(
      child: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        iconTheme: const IconThemeData(color: kBlack),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: kBlack, fontSize: 24),
            ),
            IconButton(
              icon: const Icon(Icons.person_add_alt_1),
              iconSize: 32,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
