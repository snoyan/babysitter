// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
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
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/person.jpg'),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(500),
                        topRight: Radius.circular(500),
                        bottomLeft: Radius.circular(1000),
                        bottomRight: Radius.circular(1000),
                      )),
                  height: 100.0,
                  width: 140,
                ),
              ),
              const Text('نام : '),
              const Text('توضیحات :'),
              const Text('امتیاز :'),
            ],
          )),
      onTap: () {
        print('Pressed');
        Navigator.pushNamed(context, '/person_info');
      },
    );
  }
}
