import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/books.dart';
import 'package:flutter_application_1/data/friends_announcment.dart';
import 'package:flutter_application_1/data/games.dart';
import 'package:flutter_application_1/pages/books_page.dart';
import 'package:flutter_application_1/pages/friends_page.dart';
import 'package:flutter_application_1/pages/games_page.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/navbar.dart';
import 'package:flutter_application_1/widgets/text_title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(title: 'Home'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextTitleWidget(
                        text: '👋 Welcome back!', isHeading: false),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextTitleWidget(
                        text: "New with Friends", isHeading: true),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FriendsPage()));
                        },
                        child: const Text('See More',
                            style: TextStyle(fontSize: 16)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: announcments[index],
                      );
                    },
                    itemCount: 3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextTitleWidget(
                        text: "New in Gaming", isHeading: true),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GamePage()));
                        },
                        child: const Text('See More',
                            style: TextStyle(fontSize: 16)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  height: 300.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: games[index],
                      );
                    },
                    itemCount: 3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextTitleWidget(
                        text: "New on Shelves", isHeading: true),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BooksPage()));
                        },
                        child: const Text('See More',
                            style: TextStyle(fontSize: 16)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 24.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  height: 300.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: books[index],
                      );
                    },
                    itemCount: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: const Navbar());
  }
}
