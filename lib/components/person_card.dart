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
          color: Colors.white,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Image(
                  image: const AssetImage('assets/image/person.jpg'),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.3,
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
