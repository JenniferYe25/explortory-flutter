import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/friends.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';

class AddFriendsPage extends StatefulWidget {
  const AddFriendsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddFriendsPageState createState() => _AddFriendsPageState();
}

class _AddFriendsPageState extends State<AddFriendsPage> {
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(title: 'Add Friend'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            const Text(
              'First Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _firstname,
              ),
            ),
            const Text(
              'Last Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _lastname,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    var name = '${_firstname.text} ${_lastname.text}';

                    friends.add(name);
                    Navigator.pop(context);
                  });
                },
                child: const Text('Add'))
          ],
        ),
      ),
    );
  }
}
