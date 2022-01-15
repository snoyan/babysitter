// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../models/nurse.dart';
import '../screens/nurseInfo/person_info_screen.dart';

class PersonCard extends StatelessWidget {
  final Nurse nurse;
  const PersonCard({
    required this.nurse,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(nurse.imgpath),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(500),
                        topRight: Radius.circular(500),
                        bottomLeft: Radius.circular(1000),
                        bottomRight: Radius.circular(1000),
                      )),
                  height: 100.0,
                  width: 140,
                ),
              ),
              Text('نام : ${nurse.name}'),
              Text('سابقه کار :${nurse.xpYEar}'),
              Text('امتیاز :${nurse.rating}'),
            ],
          )),
      onTap: () {
        print('Pressed');
        Navigator.pushNamed(context, '/person_info',
            arguments: NurseDetailsArguments(nurse: nurse));
      },
    );
  }
}
