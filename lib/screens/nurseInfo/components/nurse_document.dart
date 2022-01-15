import 'package:flutter/material.dart';

class NurseDocument extends StatelessWidget {
  const NurseDocument({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
                height: MediaQuery.of(context).size.height / 0.5,
                color:const Color(0xFF797979), //could change this to Color(0xFF737373), 
                           //so you don't have to change MaterialApp canvasColor
                child:  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.only(
                            topLeft:  Radius.circular(15.0),
                            topRight:  Radius.circular(15.0))),
                    child:const  Center(
                      child:  Text("This is a modal sheet"),
                    )),
              );
  }
}
