// ignore_for_file: implementation_imports, avoid_print, unused_import

import 'package:babysitter/constant.dart';
import 'package:babysitter/models/nurse.dart';
import 'package:babysitter/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import '../../data.dart';
import 'components/advertising.dart';
import 'components/top_nurse.dart';

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
                top: 50.0,
                left: 50.0,
                right: 50.0,
              ),
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
            const Title(label: 'پرستاران برتر'),
            const TopNurse(),

            /// . this part if for search box.
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: MediaQuery.of(context).size.height * 0.07,
            //     decoration: const BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.all(Radius.circular(40))),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Flexible(
            //           child: TextField(
            //             textAlignVertical: TextAlignVertical.bottom,
            //             decoration: const InputDecoration(
            //               focusedBorder: OutlineInputBorder(
            //                 // width: 0.0 produces a thin "hairline" border
            //                 borderRadius:
            //                     BorderRadius.all(Radius.circular(40.0)),
            //                 borderSide:
            //                     BorderSide(color: Colors.white, width: 0.0),
            //               ),
            //               enabledBorder: OutlineInputBorder(
            //                 // width: 0.0 produces a thin "hairline" border
            //                 borderRadius:
            //                     BorderRadius.all(Radius.circular(40.0)),
            //                 borderSide:
            //                     BorderSide(color: Colors.white, width: 0.0),
            //               ),
            //               disabledBorder: OutlineInputBorder(
            //                 // width: 0.0 produces a thin "hairline" border
            //                 borderRadius:
            //                     BorderRadius.all(Radius.circular(40.0)),
            //                 borderSide:
            //                     BorderSide(color: Colors.grey, width: 0.0),
            //               ),
            //               hintText: 'جست و جو',
            //             ),
            //             textAlign: TextAlign.start,
            //             cursorColor: Colors.black,
            //             onChanged: (value) {
            //               print(value);
            //             },
            //           ),
            //         ),
            //         Container(
            //           height: MediaQuery.of(context).size.height * 0.07,
            //           width: MediaQuery.of(context).size.width * 0.15,
            //           decoration: const BoxDecoration(
            //               color: Colors.black,
            //               borderRadius: BorderRadius.all(Radius.circular(40))),
            //           child: IconButton(
            //             icon: const Icon(
            //               Icons.search,
            //               color: kBaseColor5,
            //               size: 20.0,
            //             ),
            //             onPressed: () {
            //               print('pressed');
            //               // showBottomSheet(
            //               //     context: context,
            //               //     builder: (context) => const SearchScreen());
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            const Title(label: 'آگهی ها'),

            /// . this part if for advertising section.
            const Advertising(),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
