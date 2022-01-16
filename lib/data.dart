// ignore_for_file: unused_import, non_constant_identifier_names

import 'package:babysitter/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'models/nurse.dart';

class Data extends ChangeNotifier {
  String text = 'صفحه\bاصلی';
  List<Nurse> allNurse = Nurses;
}

List<Nurse> Nurses = [
  Nurse(
    name: 'مهسا میرزاخانی',
    family: '',
    docPath: '',
    exprience: '',
    gender: Gender.female,
    id: 0,
    phone: "09123456578",
    state: 0,
    age: 27,
    city: "زنجان",
    workConditions:
        "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
    xpYEar: 5,
    rating: "***** 8/75",
    imgpath: "assets/image/person.jpg",
  ),
  Nurse(
      name: 'مهتاب علیزاده',
      docPath: '',
      exprience: '',
      gender: Gender.female,
      id: 1,
      phone: "09123456578",
      state: 0,
      age: 25,
      city: "تهران",
      family: '',
      workConditions:
          "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
      xpYEar: 5,
      rating: "***** 8/75",
      imgpath: "assets/image/person2.jpg"),
  Nurse(
    name: 'امیر امینی',
    docPath: '',
    exprience: '',
    gender: Gender.female,
    id: 2,
    phone: "09123456578",
    state: 0,
    family: '',
    age: 35,
    city: "مشهد",
    workConditions:
        "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
    xpYEar: 5,
    rating: "***** 8/75",
    imgpath: "assets/image/person.jpg",
  ),
  Nurse(
    name: 'نگین احمدی',
    family: '',
    docPath: '',
    exprience: '',
    gender: Gender.female,
    id: 3,
    phone: "09123456578",
    state: 0,
    age: 27,
    city: "کرج",
    workConditions:
        "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
    xpYEar: 4,
    rating: "***** 8/75",
    imgpath: "assets/image/person.jpg",
  ),
  Nurse(
      name: 'مبینا امینی',
      family: '',
      docPath: '',
      exprience: '',
      gender: Gender.female,
      id: 4,
      phone: '09123456578',
      state: 0,
      age: 39,
      city: "بندرعباس",
      workConditions:
          "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
      xpYEar: 3,
      rating: "***** 8/75",
      imgpath: "assets/image/person2.jpg"),
];
