import 'package:flutter/material.dart';
import 'package:germankotha1/unilt/customappbar.dart';

class page27 extends StatelessWidget {
  const page27({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarname: "Unlimited hearts", ontap: (){
        Navigator.pop(context);
      }),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Image.asset("image/43.png"),
            SizedBox(height: 100,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      minimumSize: Size(343, 55),
                      backgroundColor: Color(0xff2E826E)
                  ),
                  onPressed: (){

                  }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("image/44.png"),
                  SizedBox(width: 20,),
                  Text("Update for unlimite heart",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),)
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}