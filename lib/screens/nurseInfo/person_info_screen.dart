import 'package:babysitter/constant.dart';
import 'package:flutter/material.dart';

import '../../models/nurse.dart';
import 'components/header.dart';
import 'components/nurse_call.dart';
import 'components/nurse_description.dart';
import 'components/nurse_document.dart';
import 'components/nurse_information.dart';

class NurseInfo extends StatelessWidget {
  const NurseInfo({Key? key}) : super(key: key);
  static String routeName = '/person_info';
  @override
  Widget build(BuildContext context) {
    final NurseDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as NurseDetailsArguments;
    return Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          padding: const EdgeInsets.only(bottom: 15),
          decoration: const BoxDecoration(
            color: kBaseColor2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.39,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(70, 0),
                      primary: kBaseColor5,
                      padding: const EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        //isScrollControlled: true,

                        context: context,
                        builder: (context) => const NurseDocument(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      );
                    },
                    child: const Text(
                      'دیدن مدارک',
                      style: TextStyle(fontSize: 12, fontFamily: 'IranSans'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.39,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(70, 0),
                      primary: kBaseColor4,
                      padding: const EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        //isScrollControlled: true,

                        context: context,
                        builder: (context) => const NurseCall(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      );
                    },
                    child: const Text(
                      'اطلاعات تماس',
                      style: TextStyle(fontSize: 12, fontFamily: 'IranSans'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: kBaseColor1,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Header(
                  nurse: agrs.nurse,
                ),
                NurseInformation(agrs: agrs),
                const SizedBox(
                  height: 10,
                ),
                NurseDescription(agrs: agrs)
              ],
            ),
          ),
        ));
  }
}

class NurseDetailsArguments {
  final Nurse nurse;

  NurseDetailsArguments({required this.nurse});
}
