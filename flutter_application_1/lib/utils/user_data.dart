import 'dart:convert';

import 'package:flutter_application_1/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static late SharedPreferences _data;

  static const _keyUser = 'user';
  static const myUser = User(
    name: 'Marijin Puck',
    address: '3301 Langstaff Rd',
    email: 'marijnpuck@gmail.com',
    book: 'It',
    game: 'Among Us',
  );

  static Future init() async => _data = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _data.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _data.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
