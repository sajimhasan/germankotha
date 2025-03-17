import 'package:flutter/material.dart';

class Grammer extends StatelessWidget {
  const Grammer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){

          Navigator.pop(context);

        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Grammer",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
              Container(
                height: 258,
                width: 343,
                decoration: BoxDecoration(
                  color: Color(0xffF6F5F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Text("Explanation",style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,

                          ),),
                          SizedBox(height: 100,),
                          Icon(Icons.settings_suggest_outlined,size: 70,)
                        ],
                      ),
                    ),
                    SizedBox(width: 50,),
                    Image.asset("image/21.jpg")
                  ],

                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 258,
                width: 343,
                decoration: BoxDecoration(
                  color: Color(0xffF6F5F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset("image/22.png"),
                    SizedBox(width: 50,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Text("Explanation",style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,

                          ),),
                          SizedBox(height: 100,),
                          Icon(Icons.settings_suggest_outlined,size: 70,)
                        ],
                      ),
                    ),
                  ],

                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 258,
                width: 343,
                decoration: BoxDecoration(
                  color: Color(0xffF6F5F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Text("Explanation",style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,

                          ),),
                          SizedBox(height: 100,),
                          Icon(Icons.settings_suggest_outlined,size: 70,)
                        ],
                      ),
                    ),
                    SizedBox(width: 50,),
                    Image.asset("image/21.jpg")
                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}