import 'package:flutter/material.dart';

class Customcontainerbutton extends StatelessWidget {
  final String heding;
  final String mainimage;
  final VoidCallback ontap;
  const Customcontainerbutton({super.key, required this.heding, required this.mainimage, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: Color(0xffF6F5F5),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Image.asset(mainimage),
            SizedBox(height: 40,),
            Text(heding,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
            ),)
          ],
        ),
      ),
    );
  }
}