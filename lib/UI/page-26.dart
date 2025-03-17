import 'package:flutter/material.dart';
import 'package:germankotha1/UI/page-27.dart';
import 'package:germankotha1/unilt/customappbar.dart';

class page26 extends StatelessWidget {
  const page26({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarname: "Ad free", ontap: (){
        Navigator.pop(context);
      }),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Your experience is now ad-free. Focus on teaching, no distractions",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2E826E),
                        minimumSize: Size(164, 50)),
                    onPressed: () {

                    },
                    child: Row(
                      children: [
                        Image.asset("image/42.png"),
                        SizedBox(width: 5,),
                        Text(
                          "Ad-free ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    )
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2E826E),
                        minimumSize: Size(164, 50)),
                    onPressed: () {

                    },
                    child: Row(
                      children: [
                        Icon(Icons.update,color: Colors.white,),
                        SizedBox(),
                        TextButton( onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> page27()));
                        },
                          child: Text("Update ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white)) ,
                        )
                      ],
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
