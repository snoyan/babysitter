import '../constant.dart';

class Nurse {
  int id;
  String name = '';
  String family = '';
  String imgpath = '';
  int age = 0;
  String exprience = '';
  int state = 0;
  String city = '';

  /// .this should be an image path
  var docPath = '';
  String phone = '';
  int xpYEar = 0;
  String workConditions = '';
  Gender gender = Gender.male;
  Nurse(
      {required this.id,
      required this.name,
      required this.family,
      required this.imgpath,
      required this.age,
      required this.exprience,
      required this.state,
      required this.city,
      required this.docPath,
      required this.phone,
      required this.xpYEar,
      required this.workConditions,
      required this.gender});

  Nurse.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        family = json['family'],
        imgpath = json['imgpath'],
        age = json['age'],
        exprience = json['exprience'],
        state = json['state'],
        city = json['city'],
        docPath = json['docpath'],
        phone = json['phone'],
        xpYEar = json['xpYear'],
        workConditions = json['workCondition'],
        gender = json['gender'];
}
