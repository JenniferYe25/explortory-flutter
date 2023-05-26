import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_title_widget.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class FriendsTileWidget extends StatelessWidget {
  final String name;

  const FriendsTileWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 40,
          backgroundColor: kBlue,
        ),
        title: TextTitleWidget(text: name, isHeading: true),
        trailing: IconButton(
          icon: const Icon(Icons.keyboard_control_rounded),
          onPressed: () {},
        ),
      ),
    );
  }
}
