import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class TextTitleWidget extends StatelessWidget {
  final String text;
  final bool isHeading;

  const TextTitleWidget(
      {super.key, required this.text, required this.isHeading});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: isHeading ? 24 : 32,
            color: kBlack,
          ),
        ));
  }
}
