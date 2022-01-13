// ignore_for_file: implementation_imports, avoid_print

import 'package:babysitter/person_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);
  static String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
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
                        style:
                            const TextStyle(color: Colors.white, fontSize: 40),
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
                  child: Wrap(
                    children: List.generate(
                      10,
                      (index) {
                        return const Padding(
                          padding: EdgeInsets.only(
                              top: 8.0, right: 20.0, left: 20.0),
                          child: PersonCard(),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
