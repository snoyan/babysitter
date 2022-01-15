// ignore_for_file: avoid_print

import 'package:babysitter/constant.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static String routeName = "/search_screen";

  const SearchScreen({Key? key}) : super(key: key);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 14.0, right: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 35.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    decoration: BoxDecoration(
                      color: kBaseColor5.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      autofocus: true,
                      onTap: () {
                        print('pressed');
                      },
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          // contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "جستجو محصول ...",
                          hintStyle: TextStyle(fontSize: 14),
                          prefixIcon: RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.search,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 11),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.48),
          children: List.generate(
            3,
            (index) => Container(
              margin: const EdgeInsets.only(
                top: 8,
              ),
              //padding: EdgeInsets.only(left: 10),
              child: const Text('نیجه'),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key, this.autoFocus = false}) : super(key: key);
  final bool autoFocus;

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  get kSecondaryColor => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        color: kBaseColor5.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        autofocus: widget.autoFocus,
        onTap: () {
          print('pressed');
        },
        onChanged: (value) {},
        decoration: const InputDecoration(
            // contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "جستجو محصول ...",
            hintStyle: TextStyle(fontSize: 12),
            prefixIcon: RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.search,
              ),
            )),
      ),
    );
  }
}
