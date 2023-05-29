import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class FriendCardWidget extends StatelessWidget {
  final String name;
  final String message;
  final IconData icon;

  const FriendCardWidget(
      {super.key,
      required this.name,
      required this.message,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: kLight,
      ),
      child: SizedBox(
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              Text(
                message,
                style: const TextStyle(fontSize: 16.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Icon(icon, color: kOrange, size: 40),
              )
            ],
          ),
        ),
      ),
    );
  }
}
