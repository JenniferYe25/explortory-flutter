import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/friends.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/friends_tile_widget.dart';
import 'package:flutter_application_1/widgets/navbar.dart';
import 'package:flutter_application_1/pages/add_friends_page.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final people = <Widget>[];
    for (var i = 0; i < friends.length; i++) {
      people.add(FriendsTileWidget(name: friends[i]));
    }
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(
            title: 'Friends',
            icon: Icons.person_add_alt_1,
            page: AddFriendsPage(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16),
          child: ListView(
            children: people,
          ),
        ),
        drawer: const Navbar());
  }
}
