import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/books_page.dart';
import 'package:flutter_application_1/pages/friends_page.dart';
import 'package:flutter_application_1/pages/games_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/widgets/text_title_widget.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0,
              top: 16.0,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.house_rounded,
                size: 32,
              ),
              title: const TextTitleWidget(text: 'Home', isHeading: true),
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomePage())));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: const Icon(
                Icons.supervisor_account,
                size: 32,
              ),
              title: const TextTitleWidget(text: 'Friends', isHeading: true),
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const FriendsPage())));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: const Icon(
                Icons.videogame_asset,
                size: 32,
              ),
              title: const TextTitleWidget(text: 'Games', isHeading: true),
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GamePage())));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: const Icon(
                Icons.book,
                size: 32,
              ),
              title: const TextTitleWidget(text: 'Books', isHeading: true),
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const BooksPage())));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: const Icon(
                Icons.person,
                size: 32,
              ),
              title: const TextTitleWidget(text: 'Profile', isHeading: true),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
