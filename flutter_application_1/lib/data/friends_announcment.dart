import 'package:flutter/material.dart';

import '../widgets/friend_card_widget.dart';

final announcments = [
  const FriendCardWidget(
    icon: Icons.celebration_outlined,
    message: 'Jennifer just finished setting up their IQ Wifi router!',
    name: 'Jennifer Ye',
  ),
  const FriendCardWidget(
    icon: Icons.location_on_outlined,
    message: 'Menghue just added a new location on their network!',
    name: 'Menghua Jiang',
  ),
  const FriendCardWidget(
    icon: Icons.lock_outline,
    message: 'John had locked the network, forbids new users',
    name: 'John Doe',
  ),
];
