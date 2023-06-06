import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/games.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/navbar.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(title: 'Games'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: 32,
            children: games,
          ),
        ),
        drawer: const Navbar());
  }
}
