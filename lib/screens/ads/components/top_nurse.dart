import 'package:babysitter/constant.dart';
import 'package:babysitter/screens/ads/components/top_card.dart';
import 'package:flutter/material.dart';

import '../../../data.dart';

class TopNurse extends StatelessWidget {
  const TopNurse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: 80,
        color: kBaseColor1,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: List.generate(
              Nurses.length,
              (index) {
                return TopCard(
                  nurse: Nurses[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
