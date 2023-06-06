import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/edit_profile.dart';
import 'package:flutter_application_1/utils/user_data.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/navbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = UserData.getUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(title: 'Profile'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            height: 16 * 8,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/kermit.jpg'))),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 16),
            child: Row(
              children: [
                const Text(
                  'Name',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  user.name,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 16),
            child: Row(
              children: [
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  user.email,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 16),
            child: Row(
              children: [
                const Text(
                  'Address',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  user.address,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 8),
            child: Row(
              children: const [
                Text(
                  'Interests ❤️',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 16),
            child: Row(
              children: [
                const Text(
                  'Books',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  user.book,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 16),
            child: Row(
              children: [
                const Text(
                  'Games',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  user.game,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          TextButton(
              onPressed: () async {
                await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfile()));
                setState(() {});
              },
              child: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 16),
              ))
        ],
      ),
      drawer: const Navbar(),
    );
  }
}
