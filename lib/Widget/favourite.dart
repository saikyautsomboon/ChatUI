import 'package:chatui/Model/usermodel.dart';
import 'package:flutter/material.dart';

class favouritecontext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<User> users = [];
    users.add(User('images/1.jpg', 'Tanjiro'));
    users.add(User('images/2.jpg', 'Nesuko'));
    users.add(User('images/3.jpg', 'Tanjiro'));
    users.add(User('images/4.png', 'Zeniizu'));
    users.add(User('images/5.jpg', 'Kimetsu'));
    users.add(User('images/6.webp', 'Musan'));
    users.add(User('images/7.jpg', 'Tanjiro'));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Favourite Contactes',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 22,
                ),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            height: 90,
            child: ListView.builder(
              itemCount: users.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      Text(
                        users[index].name,
                        style: TextStyle(color: Colors.blueGrey),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
