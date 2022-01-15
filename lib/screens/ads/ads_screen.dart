// ignore_for_file: implementation_imports, avoid_print

import 'package:babysitter/components/person_card.dart';
import 'package:babysitter/models/nurse.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import '../../data.dart';

class AdsScreen extends StatefulWidget {
  const AdsScreen({
    Key? key,
  }) : super(key: key);
  static String routeName = '/ads_screen';

  @override
  State<AdsScreen> createState() => _AdsScreenState();
}

class _AdsScreenState extends State<AdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        padding: EdgeInsets.only(bottom: 60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 100.0, right: 100.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      context.watch<Data>().text,
                      style: const TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 40.0,
                    child: Row(
                      children: [
                        Flexible(
                          child: TextField(
                            cursorColor: Colors.black,
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            print('pressed');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      children: List.generate(
                        Nurses.length,
                        (index) {
                          return  Padding(
                            padding:const EdgeInsets.only(
                                top: 8.0, right: 20.0, left: 20.0),
                            child: PersonCard(nurse:Nurses[index] ,),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
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
