// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/nurse.dart';
import '../../nurseInfo/nurse_info_screen.dart';

class TopCard extends StatelessWidget {
  final Nurse nurse;
  const TopCard({
    required this.nurse,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: kBaseColor5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(nurse.imgpath),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(500))),
                height: 50.0,
                width: 70.0,
              ),
            ),
            Text(nurse.rating),
          ],
        ),
      ),
      onTap: () {
        print('Pressed');
        Navigator.pushNamed(context, '/nurse_info',
            arguments: NurseDetailsArguments(nurse: nurse));
      },
    );
  }
}
