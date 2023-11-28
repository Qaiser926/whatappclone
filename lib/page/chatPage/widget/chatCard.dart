// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 30,
        child: SvgPicture.asset(
          'images/group.svg',
          color: Colors.white,
          height: 30,
          width: 30,
        ),
      ),
      title: const Text('Qaiser'),
      subtitle: const Row(
        children: [Icon(Icons.done_all), Text("Qaiser here")],
      ),
      trailing: const Text("12:24"),
    );
  }
}
