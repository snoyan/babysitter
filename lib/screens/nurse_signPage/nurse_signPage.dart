// ignore_for_file: file_names

import 'dart:ui';

import 'package:babysitter/constant.dart';
import 'package:flutter/material.dart';

class NurseSignUp extends StatefulWidget {
  const NurseSignUp({Key? key}) : super(key: key);
  static String routeName = '/NurseSignUp';
  @override
  _NurseSignUpState createState() => _NurseSignUpState();
}

class _NurseSignUpState extends State<NurseSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/baner.jpg'),
                      fit: BoxFit.fill),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                )),
            Positioned(
                top: 3,
                right: 2,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop;
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 28,
                      color: Colors.black,
                    ))),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: const BoxDecoration(
                  color: kBaseColor1,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
