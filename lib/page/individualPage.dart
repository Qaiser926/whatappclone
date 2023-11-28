// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:web_socket_app/model/chatModel.dart';

class IndividualPage extends StatefulWidget {
  final ChatModel chatModel;
  const IndividualPage({
    Key? key,
    required this.chatModel,
  }) : super(key: key);

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.teal,
        leadingWidth: 100,
        leading: Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
          CircleAvatar(
            backgroundColor: Colors.blueGrey,

            child:   SvgPicture.asset(
              widget.chatModel.isGroup
                  ? "images/group.svg"
                  : "images/person.svg",
                  height: 30,
                  width: 30,
                  color: Colors.white,
            ),),
           
          ],
        ),
        title:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.chatModel.name, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            const Text('last time is 12:30', style: TextStyle(fontSize: 13),),
          ],
        ),
        actions: [

          IconButton(onPressed: (){}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.phone)),
             PopupMenuButton(
          onSelected: (value){
            print(value);
          },
          itemBuilder:(context) {


           return [
            const PopupMenuItem(child: Text('New Group'),value: 'new group'),
            const PopupMenuItem(child: Text('New broadcast'),value: 'new broadcast'),
            const PopupMenuItem(child: Text('WhatsApp Web'),value: 'Whatsapp web'),
            const PopupMenuItem(child: Text('Stard message'),value: 'stard message'),
            const PopupMenuItem(child: Text('Settings'),value: 'settings'),
           ];

         }, )
        ],
      ),
    );
  }
}
