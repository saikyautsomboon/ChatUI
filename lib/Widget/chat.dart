import 'package:chatui/Model/usermodel.dart';
import 'package:flutter/material.dart';

class chatrecent extends StatelessWidget {
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
    return Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.red[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(users[index].image),
                ),
                Container(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        users[index].name,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'How Are Yoy? I hope you are well and Happy?',
                        style: TextStyle(color: Colors.blueGrey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('1:30 PM'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'New',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
