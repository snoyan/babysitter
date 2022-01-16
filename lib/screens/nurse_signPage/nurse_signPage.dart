import 'dart:ui';

import 'package:babysitter/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/custom_surfix_icon.dart';

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
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
              //  fit: StackFit.expand,
              children: [
                //top banner container
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
                //header back arrow icon and title
                Positioned(
                    top: 3,
                    right: 2,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 28,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'فرم ایجاد آگهی پرستار',
                          style: TextStyle(
                              fontFamily: 'iransans',
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                //bnner sentence
                Positioned(
                  top: 59,
                  right: 55,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                        color: kBaseColor0.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      'برای بازخورد بهتر و ارتباط والدین با شما\n           تمامی فرم ها را پر کنید!',
                      style: TextStyle(
                          fontFamily: 'iransans',
                          fontSize: 18,
                          color: kBaseColor4,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //body
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.75,
                    decoration: const BoxDecoration(
                      color: kBaseColor1,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              nameField(true, 'نام'),
                              nameField(true, 'فامیلی')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }

  Container nameField(bool? isWriteAble, String label) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      padding: const EdgeInsets.symmetric(
          //  vertical: 40.0,
          //  horizontal: 20,
          ),
      child: TextFormField(
        decoration: InputDecoration(
            /* icon: SvgPicture.asset(
            'assets/icons/User.svg',
            height: 18,
            color: kBaseColor3,
          ),*/
            border: const OutlineInputBorder(),
            labelText: label,
            hintText: label,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
      ),
    );
  }
}
