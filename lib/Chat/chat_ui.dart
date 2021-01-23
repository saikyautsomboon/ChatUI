import 'package:chatui/Widget/category.dart';
import 'package:chatui/Widget/chat.dart';
import 'package:chatui/Widget/favourite.dart';

import 'package:flutter/material.dart';

class chatui extends StatefulWidget {
  @override
  _chatuiState createState() => _chatuiState();
}

class _chatuiState extends State<chatui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: Icon(Icons.drag_handle),
        ),
        title: Text('Chat'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          categories(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  favouritecontext(),
                  chatrecent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
