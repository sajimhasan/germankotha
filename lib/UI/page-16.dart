import 'package:flutter/material.dart';

class page16 extends StatelessWidget {
  const page16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset("image/32.png"),
            SizedBox(height: 30,),
            Text('Story time',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 50,),
            Image.asset("image/33.png")
          ],
        ),
      ),
    );
  }
}