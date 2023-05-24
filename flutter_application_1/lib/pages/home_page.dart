import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(
          title: 'Home',
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '👋 Welcome back!',
                style: TextStyle(fontSize: 32),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
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
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.pop(context);
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
                title: const Text(
                  'Friends',
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.pop(context);
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
                title: const Text(
                  'Games',
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.pop(context);
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
                title: const Text(
                  'Books',
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.pop(context);
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
                title: const Text(
                  'Profile',
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
