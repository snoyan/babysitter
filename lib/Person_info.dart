import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  const PersonInfo({Key? key}) : super(key: key);
  static String routeName = '/person_info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
        child: Column(
          children: const [
            Text('اطلاعات پرستار'),
          ],
        ),
      ))),
    );
  }
}
