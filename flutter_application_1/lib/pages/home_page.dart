import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/books_page.dart';
import 'package:flutter_application_1/pages/friends_page.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/text_title_widget.dart';
import 'package:flutter_application_1/widgets/friend_card_widget.dart';
import 'package:flutter_application_1/widgets/book_card_widget.dart';
import 'package:flutter_application_1/widgets/game_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(
          title: 'Home',
          friends: false,
        ),
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FriendCardWidget(
                      icon: Icons.celebration_outlined,
                      message:
                          'Jennifer just finished setting up their IQ Wifi router!',
                      name: 'Jennifer Ye',
                    ),
                    FriendCardWidget(
                        icon: Icons.location_on_outlined,
                        message:
                            'Menghue just added a new location on their network!',
                        name: 'Menghua Jiang'),
                    FriendCardWidget(
                      icon: Icons.lock_outline,
                      message: 'John had locked the network, forbids new users',
                      name: 'John Doe',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextTitleWidget(text: "New in Gaming", isHeading: true),
                  TextButton(
                      onPressed: () {},
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    GameCardWidget(
                      img:
                          'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/en_US/games/switch/t/the-legend-of-zelda-tears-of-the-kingdom-switch/hero',
                      title: 'The Legend of Zelda: Tears of the Kingdom',
                    ),
                    GameCardWidget(
                      title: 'Among Us',
                      img:
                          'https://th.bing.com/th/id/R.db5a3a3885363d79b0ea6c5891179d46?rik=qviqKYwE5I6aWA&pid=ImgRaw&r=0',
                    ),
                    GameCardWidget(
                        title: "Kirby's Return to Dreamland",
                        img:
                            'https://www.ggrecon.com/media/nlbmcqdy/kirbys-dream-land-deluxe-release-date.jpg')
                  ],
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BookCardWidget(
                      ishome: true,
                      title: 'To Kill a Mockingbird',
                      cover:
                          'https://th.bing.com/th/id/OIP.NGofr7d8y6lcAUn2SeXXPgAAAA?pid=ImgDet&rs=1',
                    ),
                    BookCardWidget(
                      ishome: true,
                      title: 'It',
                      cover:
                          'https://th.bing.com/th/id/R.e79858a15936edf4157f53dec1a63caa?rik=aRWfADCG6vg%2bWg&pid=ImgRaw&r=0',
                    ),
                    BookCardWidget(
                      ishome: true,
                      title: 'Classroom of the Elite',
                      cover:
                          'https://th.bing.com/th/id/OIP.P1DMQYRveoywVb6Gjc-vEwHaKj?pid=ImgDet&rs=1',
                    ),
                  ],
                ),
              ),
            ),
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
                title: const TextTitleWidget(text: 'Home', isHeading: true),
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
                title: const TextTitleWidget(text: 'Friends', isHeading: true),
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
                title: const TextTitleWidget(text: 'Games', isHeading: true),
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
                title: const TextTitleWidget(text: 'Books', isHeading: true),
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
                title: const TextTitleWidget(text: 'Profile', isHeading: true),
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
