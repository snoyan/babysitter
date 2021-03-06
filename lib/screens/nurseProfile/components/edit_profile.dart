import 'package:babysitter/constant.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_helper.dart';
import '../../nurse_signPage/nurse_signPage.dart';
//import 'profile_pic.dart';

class EditProfileScreen extends StatefulWidget {
  static String routeName = "/editProfile";

  EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool showSpinner = false;
  bool isActive = false;
  int? id;
  String? avatarUrl;
  String? email = "";
  String? firstName;
  String? lastName;
  String? phone;
  String? city = "";
  String? state;
  String? address;
  bool enableFAB = false;
  bool isCheckedMan = false;
  bool isCheckedfemale = false;
  String Age = '0';
  String xpYear = '0';
  // The _onBackPressed is for back to HomeScreen and refresh it by press Android backButton.
  /* Future<bool?> onBackPressed() async {
    Navigator.pushNamedAndRemoveUntil(
        context, ProfileScreen.routeName, (_) => false);
    return true;
  }
*/
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            iconSize: 40.0,
            icon: const Icon(
              Icons.arrow_back,
              size: 24,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        toolbarHeight: 60,
        title: const Text("ویرایش اطلاعات",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontFamily: 'iransans')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(
              isEditAble: isActive,
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    nameField(firstName, isActive),
                    const SizedBox(
                      width: 4,
                    ),
                    familyField(lastName, isActive),
                  ],
                ),
                emailField(email, isActive),
                Row(
                  children: [
                    phoneFiled(phone, isActive),
                    //gender man
                    Container(
                      margin: const EdgeInsets.only(right: 5, bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        //border: Border.all(width: 2, color: kBaseColor2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Text(
                                'مرد',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'iransans',
                                    color: kBaseColor2),
                              ),
                              Theme(
                                child: Checkbox(
                                  value: isCheckedMan,
                                  activeColor: kBaseColor2,
                                  onChanged: isActive
                                      ? (value) {
                                          isCheckedfemale == true
                                              ? isCheckedfemale = false
                                              : isCheckedfemale = false;
                                          setState(() {
                                            isCheckedMan = value!;
                                          });
                                        }
                                      : null,
                                ),
                                data: ThemeData(
                                  //primarySwatch: Colors.blue,
                                  unselectedWidgetColor:
                                      kBaseColor2, // Your color
                                ),
                              ),
                              //Checkbox
                            ], //<Widget>[]
                          ), //Row
                          //gender women
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Text(
                                'زن',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'iransans',
                                    color: kBaseColor2),
                              ),
                              Theme(
                                child: Checkbox(
                                  value: isCheckedfemale,
                                  activeColor: kBaseColor2,
                                  onChanged: isActive
                                      ? (value) {
                                          isCheckedMan == true
                                              ? isCheckedMan = false
                                              : isCheckedMan = false;
                                          setState(() {
                                            isCheckedfemale = value!;
                                          });
                                        }
                                      : null,
                                ),
                                data: ThemeData(
                                  //   primarySwatch: Colors.blue,
                                  unselectedWidgetColor:
                                      kBaseColor2, // Your color
                                ),
                              ), //Checkbox
                            ], //<Widget>[]
                          ), //Row
                        ],
                      ),
                    )
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  StateSelector(context),
                  const SizedBox(
                    width: 4,
                  ),
                  cityFiled(city, isActive)
                ]),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AgeField(Age, isActive),
                    const SizedBox(
                      width: 4,
                    ),
                    xpYears(xpYear, isActive),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                addressField(address, isActive),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: DefaultButton(
                      color: isActive ? Colors.green : kBaseColor2,
                      text: isActive ? "ذخیره" : "ویرایش",
                      press: () {
                        setState(() {
                          isActive = !isActive;
                        });
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

//select state
  Padding StateSelector(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: GestureDetector(
        onTap: () {
          isActive
              ? setState(() {
                  enableFAB = true;
                })
              : Null;
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const StetesListProvider();
              });
        },
        child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            //border: Border.all(width: 2, color: kBaseColor2),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 15, bottom: 10, right: 10),
                        child: Text(
                          'استان',
                          style: TextStyle(
                              color: isActive
                                  ? Colors.black.withOpacity(0.5)
                                  : Colors.grey.withOpacity(0.7),
                              fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: isActive
                              ? Colors.black.withOpacity(0.5)
                              : Colors.grey.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color:
                        isActive ? kBaseColor2 : Colors.grey.withOpacity(0.4),
                    thickness: 1,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

///////////////////////
//fields start/////////
//////////////////////

  Container nameField(String? name, bool? isWriteAble) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: name,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => name = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: "نام",
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: " نام",
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/User.svg"),
        ),
      ),
    );
  }

  Container familyField(String? family, bool? isWriteAble) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: family,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => family = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: "نام خانوادگی",
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: " فامیلی",
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/User.svg"),
        ),
      ),
    );
  }

  Container emailField(String? email2, bool? isWriteAble) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: email2,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email2 = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: "ایمیل",
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: " ایمیل",
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/Mail.svg"),
        ),
      ),
    );
  }

  Container phoneFiled(String? phone2, bool? isWriteAble) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      margin: const EdgeInsets.only(right: 19, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: phone2,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => phone2 = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: "شماره تماس",
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: "  شماره موبایل",
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/Phone.svg"),
        ),
      ),
    );
  }

  Container cityFiled(String? city2, bool? isWriteAble) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: city2,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => city2 = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: "شهر",
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: " شهر",
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/User.svg"),
        ),
      ),
    );
  }

  Container stateField(String? state2, bool? isWriteAble) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: state2,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => state2 = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: "استان",
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: " استان",
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/User.svg"),
        ),
      ),
    );
  }

  Container addressField(String? address2, bool? isWriteAble) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: address2,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => address2 = newValue,
        onChanged: (value) {},
        validator: (value) {},
        minLines: 3,
        maxLines: 3,
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: "اطلاعات و شرایط پرستار",
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: " شرایط و خدمات",
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/receipt.svg"),
        ),
      ),
    );
  }

  Container AgeField(String? name, bool? isWriteAble) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: name,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => name = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: 'سال تولد',
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: 'سال تولد',
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/Gift Icon.svg"),
        ),
      ),
    );
  }

  Container xpYears(String? xpYear, bool? isWriteAble) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        initialValue: xpYear,
        enabled: isWriteAble,
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => xpYear = newValue,
        onChanged: (value) {},
        validator: (value) {},
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBaseColor2)),
          labelText: 'تجربه کاری',
          labelStyle: const TextStyle(color: kBaseColor2),
          hintText: 'تجربه کاری به سال',
          hintStyle: const TextStyle(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
              color: kBaseColor2, svgIcon: "assets/icons/Plus Icon.svg"),
        ),
      ),
    );
  }
}
