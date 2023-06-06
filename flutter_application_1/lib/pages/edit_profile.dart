import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/user_data.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/text_field_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var user = UserData.getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(title: 'Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              height: 88,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage('assets/kermit.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextFieldWidget(
                label: 'Name',
                text: user.name,
                onChanged: (name) => user = user.copy(name: name),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextFieldWidget(
                label: 'Email',
                text: user.email,
                onChanged: (email) => user = user.copy(email: email),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextFieldWidget(
                label: 'Address',
                text: user.address,
                onChanged: (address) => user = user.copy(address: address),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextFieldWidget(
                label: 'Books',
                text: user.book,
                onChanged: (book) => user = user.copy(book: book),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextFieldWidget(
                label: 'Games',
                text: user.game,
                onChanged: (game) => user = user.copy(game: game),
              ),
            ),
            TextButton(
                onPressed: () {
                  UserData.setUser(user);
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
