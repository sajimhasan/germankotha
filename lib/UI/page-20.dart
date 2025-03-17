import 'package:flutter/material.dart';

class page20 extends StatelessWidget {
  const page20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff64D7BB),
      appBar: AppBar(
        leading: CircleAvatar(
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Quiz",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Image.asset("image/37.png"),
      ),

    );
  }
}