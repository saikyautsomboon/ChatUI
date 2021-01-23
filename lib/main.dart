import 'package:chatui/Chat/chat_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red, scaffoldBackgroundColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: chatui(),
    );
  }
}
