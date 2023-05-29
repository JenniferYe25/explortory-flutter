import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class GameCardWidget extends StatelessWidget {
  final String title;
  final String img;

  const GameCardWidget({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: kLight,
      ),
      child: SizedBox(
        width: 342,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            Image(image: AssetImage(img),)
          ],
        ),
      ),
    );
  }
}
