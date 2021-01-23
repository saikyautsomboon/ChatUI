import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  int selectedindex = 0;
  Widget build(BuildContext context) {
    List catego = ['Message', 'Online', 'Group', 'Request'];
    return Container(
      height: 80,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catego.length,
        itemBuilder: (context, words) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedindex = words;
                });
              },
              child: Text(
                catego[words],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: selectedindex == words ? Colors.white : Colors.white60,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
