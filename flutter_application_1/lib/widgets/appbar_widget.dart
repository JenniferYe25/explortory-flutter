import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_title_widget.dart';
import './text_scaling.dart';
import '../constants/color_constants.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Widget? page;
  final bool? statefull;

  const AppbarWidget(
      {super.key, required this.title, this.icon, this.page, this.statefull});

  @override
  Widget build(BuildContext context) {
    final appbar = <Widget>[
      TextTitleWidget(
        text: title,
        isHeading: true,
      ),
    ];
    if (icon != null) {
      appbar.add(IconButton(
        icon: Icon(icon),
        iconSize: 32,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page!));
        },
      ));
    }
    return TextScaling(
      child: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        iconTheme: const IconThemeData(color: kBlack),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: appbar,
        ),
      ),
    );
  }
}
