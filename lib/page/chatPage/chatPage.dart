import 'package:flutter/material.dart';
import 'package:web_socket_app/model/chatModel.dart';
import 'package:web_socket_app/page/chatPage/widget/chatCard.dart';
import 'package:web_socket_app/customUi/customUi.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: 'qaiser',
        icon: 'person.svg',
        isGroup: false,
        time: '12:23',
        currentMessage: "Qaiser is here",
        status: 'no status',
        id: 1),  ChatModel(
        name: 'farooq',
        icon: 'group.svg',
        isGroup: true,
        time: '12:23',
        currentMessage: "farooq is here",
        status: 'no status',
        id: 1),  ChatModel(
        name: 'qaiser',
        icon: 'person.svg',
        isGroup: false,
        time: '12:23',
        currentMessage: "Qaiser is here",
        status: 'no status',
        id: 1),  ChatModel(
        name: 'qaiser',
        icon: 'person.svg',
        isGroup: false,
        time: '12:23',
        currentMessage: "Qaiser is here",
        status: 'no status',
        id: 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      body:ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      )
    );
  }
}
