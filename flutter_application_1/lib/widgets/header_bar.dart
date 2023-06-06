import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/widgets/text_title_widget.dart';
import 'package:flutter_application_1/utils/user_data.dart';

class HeaderBar extends StatefulWidget {
  const HeaderBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HeaderBarState createState() => _HeaderBarState();
}

class _HeaderBarState extends State<HeaderBar> {
  final user = UserData.getUser();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) => const ProfilePage())));
      },
      child: Container(
        color: kTeal,
        width: double.infinity,
        height: 226,
        padding: const EdgeInsets.only(top: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              height: 88,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage('assets/kermit.jpg'))),
            ),
            TextTitleWidget(text: user.name, isHeading: true)
          ],
        ),
      ),
    );
  }
}
