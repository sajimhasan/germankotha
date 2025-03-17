import 'package:flutter/material.dart';

class page14 extends StatelessWidget {
  const page14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff64D7BB),
      appBar: AppBar(
        leading: CircleAvatar(
          child: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text("German phrases",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 80,),
            Image.asset("image/31.png"),
            SizedBox(height: 110,),
            Text('Keep practicing',style:TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
            ) ,)
          ],
        ),
      ),

    );
  }
}