// ignore_for_file: implementation_imports, avoid_print, unused_import

import 'package:babysitter/components/person_card.dart';
import 'package:babysitter/constant.dart';
import 'package:babysitter/models/nurse.dart';
import 'package:babysitter/screens/search/search_screen.dart';
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
        padding: const EdgeInsets.only(bottom: 60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 50.0, right: 50.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.ideographic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      context.watch<Data>().text,
                      style: const TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  Row(
                    children: [
                      FloatingActionButton.small(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        onPressed: () {
                          print('pressed');
                          showBottomSheet(
                            context: context,
                            builder: (context) => const SearchScreen(),
                          );
                        },
                        child: const Icon(
                          Icons.search,
                          color: kBaseColor5,
                          size: 20.0,
                        ),
                      ),
                      FloatingActionButton.small(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        onPressed: () {
                          print('pressed');
                          showBottomSheet(
                            context: context,
                            builder: (context) => const SearchScreen(),
                          );
                        },
                        child: const Icon(
                          Icons.login,
                          color: kBaseColor5,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// . this part if for search box.
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.07,
            //   decoration: const BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(Radius.circular(40))),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Flexible(
            //         child: TextField(
            //           textAlignVertical: TextAlignVertical.bottom,
            //           decoration: const InputDecoration(
            //             focusedBorder: OutlineInputBorder(
            //               // width: 0.0 produces a thin "hairline" border
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(40.0)),
            //               borderSide:
            //                   BorderSide(color: Colors.white, width: 0.0),
            //             ),
            //             enabledBorder: OutlineInputBorder(
            //               // width: 0.0 produces a thin "hairline" border
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(40.0)),
            //               borderSide:
            //                   BorderSide(color: Colors.white, width: 0.0),
            //             ),
            //             disabledBorder: OutlineInputBorder(
            //               // width: 0.0 produces a thin "hairline" border
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(40.0)),
            //               borderSide:
            //                   BorderSide(color: Colors.grey, width: 0.0),
            //             ),
            //             hintText: 'جست و جو',
            //           ),
            //           textAlign: TextAlign.start,
            //           cursorColor: Colors.black,
            //           onChanged: (value) {
            //             print(value);
            //           },
            //         ),
            //       ),
            //       Container(
            //         height: MediaQuery.of(context).size.height * 0.07,
            //         width: MediaQuery.of(context).size.width * 0.15,
            //         decoration: const BoxDecoration(
            //             color: Colors.black,
            //             borderRadius:
            //                 BorderRadius.all(Radius.circular(40))),
            //         child: IconButton(
            //           icon: const Icon(
            //             Icons.search,
            //             color: kBaseColor5,
            //             size: 20.0,
            //           ),
            //           onPressed: () {
            //             print('pressed');
            //             showModalBottomSheet(
            //                 context: context,
            //                 builder: (context) => Container());
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      children: List.generate(
                        Nurses.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, right: 20.0, left: 20.0),
                            child: PersonCard(
                              nurse: Nurses[index],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
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
