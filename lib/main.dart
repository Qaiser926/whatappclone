import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_socket_app/page/home.dart';
import 'package:web_socket_channel/io.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
    theme: ThemeData(
      fontFamily: 'OpenSans'
    ),  
      home: WebSocketPages(
       
      ),
    );
  }
}