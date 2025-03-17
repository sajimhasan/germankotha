import 'package:flutter/material.dart';

class Rotine extends StatelessWidget {
  const Rotine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  icon: const Icon(Icons.notifications_none, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ]),
        body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, color:Colors.grey, size: 28),
                      const SizedBox(width: 8),
                      ...List.generate(4, (index) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Icon(Icons.favorite, color:Colors.red, size: 28),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: 218,
                          width: 225,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F5F5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("image/18.png")),

                      SizedBox(width: 20,),

                      Container(
                        height: 152,
                        width: 105,
                        decoration: BoxDecoration(
                            color: Color(0xffF6F5F5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child:Column(
                          children: [
                            Icon(Icons.assignment),
                            Text("Vocabulary"),
                            SizedBox(height: 20,),
                            Icon(Icons.settings_suggest_rounded),
                            Text("Grammer"),


                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type a Samething...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ])));
  }
}
