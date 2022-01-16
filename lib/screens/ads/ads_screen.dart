// ignore_for_file: implementation_imports, avoid_print
import 'package:babysitter/components/person_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import '../../constant.dart';
import '../../data.dart';
import 'components/advertising.dart';
import 'components/my_title.dart';
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
        padding:const EdgeInsets.only(bottom: 60.0),
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
                  const  SizedBox(
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

class HeadLine extends StatelessWidget {
  const HeadLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 50.0, right: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Text(
              context.watch<Data>().text,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: FloatingActionButton.small(
                  heroTag: const Text('btn2'),
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, "/search_screen");
                  },
                  child: const Icon(
                    Icons.search,
                    color: kBaseColor5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: FloatingActionButton.small(
                  heroTag: const Text('btn3'),
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, "/search_screen");
                  },
                  child: const Icon(
                    Icons.login,
                    color: kBaseColor5,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



// Padding(
//             padding: EdgeInsets.only(left: 10.0, right: 10.0),
//             child: Container(
//               height: 80,
//               color: kBaseColor1,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Wrap(
//                   children: List.generate(
//                     Nurses.length,
//                     (index) {
//                       return TopCard(
//                         nurse: Nurses[index],
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ),