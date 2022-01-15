import 'package:babysitter/constant.dart';
import 'package:flutter/material.dart';

import '../../../models/nurse.dart';

class Header extends StatelessWidget {
  const Header({required this.nurse, Key? key}) : super(key: key);
  final Nurse nurse;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .289,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: kBaseColor2,
      ),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1.6,
            child: Hero(
              tag: nurse.name,
              child: Image.asset(
                nurse.imgpath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(),
              margin: const EdgeInsets.only(top: 8, left: 8),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 27,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
