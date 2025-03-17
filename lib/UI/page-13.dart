import 'package:flutter/material.dart';
import 'package:germankotha1/UI/Page17.dart';
import 'package:germankotha1/UI/page-15.dart';
import 'package:germankotha1/UI/page-19.dart';
import 'package:germankotha1/UI/page21.dart';
import 'package:germankotha1/unilt/customcontainer.dart';

class Page13 extends StatefulWidget {
  const Page13({super.key});

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CircleAvatar(
          backgroundColor: Colors.grey[100],
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, color: Colors.grey, size: 28),
                  const SizedBox(width: 8),
                  ...List.generate(
                    4,
                        (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Icon(Icons.favorite, color: Colors.red, size: 28),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Hello Nazmun !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.grey,
                ),
              ),
              Text(
                "What would like to practice?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: (constraints.maxWidth - 20) / 2,
                        child: Column(
                          children: [
                            Customcontainerbutton(
                              heding: "German Phrases",
                              mainimage: "image/30.png",
                              ontap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Page15()));
                              },
                            ),
                            const SizedBox(height: 40),
                            Customcontainerbutton(
                              heding: "Vocabulary",
                              mainimage: "image/29.png",
                              ontap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => page19()));
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (constraints.maxWidth - 20) / 2,
                        child: Column(
                          children: [
                            Customcontainerbutton(
                              heding: "Story time",
                              mainimage: "image/27.png",
                              ontap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Page17()));
                              },
                            ),
                            const SizedBox(height: 40),
                            Customcontainerbutton(
                              heding: "Quiz",
                              mainimage: "image/28.png",
                              ontap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => page21()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
