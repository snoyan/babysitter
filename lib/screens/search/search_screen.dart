// ignore_for_file: avoid_print

import 'package:babysitter/constant.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      color: kBaseColor5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Flexible(
                child: Card(
                  child: TextField(
                    onChanged: (value) {
                      print('pressed');
                    },
                  ),
                ),
              ),
              FloatingActionButton.small(
                onPressed: () {
                  print('pressed');
                },
                child: const Icon(
                  Icons.search,
                  color: kBaseColor5,
                  size: 20.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
