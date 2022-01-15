import 'package:babysitter/screens/ads/components/person_card.dart';
import 'package:babysitter/screens/ads/components/top_card.dart';
import 'package:flutter/material.dart';

import '../../../data.dart';

class TopNurse extends StatelessWidget {
  const TopNurse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          children: List.generate(
            Nurses.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: TopCard(
                  nurse: Nurses[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
