import 'package:flutter/material.dart';

class Page12 extends StatelessWidget {
  const Page12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff64D7BB),
      appBar: AppBar(
        backgroundColor: Color(0xff64D7BB),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 300,),
          Center(
            child: Image.asset("image/25.png"),
          ),
          SizedBox(height: 200,),
          Image.asset("image/26.png")
        ],
      ),
    );
  }
}