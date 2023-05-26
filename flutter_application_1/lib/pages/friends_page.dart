import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/friends_tile_widget.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final friends = <Widget>[];
    for (var i = 0; i < 10; i++) {
      friends.add(const FriendsTileWidget(name: 'First Last'));
    }
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(
          title: 'Friends',
          friends: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16),
        child: ListView(
          children: friends,
        ),
      ),
    );
  }
}
