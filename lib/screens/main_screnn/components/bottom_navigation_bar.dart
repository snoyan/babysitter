import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: const Text("آگهی ها",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          ),
          Container(
            width: 66,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.chat, color: Colors.white),
                Text("گفت و گو", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Container(
            width: 66,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.notifications_active, color: Colors.white),
                Text("پورفایل", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
