import 'package:flutter/material.dart';

class Levelfrom extends StatelessWidget {
  final Color containercolor;
  final Color textcolor;
  final String laveltext;
  final VoidCallback ontap;

  Levelfrom({super.key,required this.containercolor, required this.textcolor, required this.laveltext, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        height: 47,
        width: 343,
        decoration: BoxDecoration(
            color: containercolor,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Center(child: Text(laveltext,style: TextStyle(
          fontSize: 22,fontWeight: FontWeight.bold,color:textcolor,

        ),)),
      ),
    );
  }
}