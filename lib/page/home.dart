// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_field, sort_child_properties_last, avoid_print
import 'package:flutter/material.dart';
import 'package:web_socket_app/page/chatPage/chatPage.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketPages extends StatefulWidget {
  @override
  State<WebSocketPages> createState() => _WebSocketPagesState();
}

class _WebSocketPagesState extends State<WebSocketPages> with SingleTickerProviderStateMixin {
  final textController = TextEditingController();

  TabController? _controller;

  @override
  void initState() {
    
    _controller=TabController(length: 5,vsync: this, initialIndex: 1);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp Clone'),

        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
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
        bottom:  TabBar(
        controller: _controller,
          tabs: const[
          Tab(icon: Icon(Icons.camera)),
          Tab(text: 'Inbox'),
          Tab(text: 'group'),
          Tab(text: 'status'),
          Tab(text: 'contact'),
        ]),
      ),
      body:  TabBarView(
        controller: _controller,
        children: const[
        Text('camera'),
       ChatPage(),
        Text('camera'),
        Text('camera'),
        Text('camera'),
      ]),
    );
  }
}
