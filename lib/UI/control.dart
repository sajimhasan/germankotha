import 'package:flutter/material.dart';
import 'package:germankotha1/unilt/fildcontainer.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black)
        ),
        title: const Text(
          "Lesson",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.grey[300], size: 24),
              const SizedBox(width: 8),
              ...List.generate(4, (index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Icon(Icons.favorite, color: Colors.red, size: 24),
              )),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            MyWidget(
                                hindimage: "image/13.png",
                                headtext: "Comment vas-tu luch bin spat heute"
                            ),
                            const SizedBox(height: 16),
                            MyWidget(
                                hindimage: "image/15.png",
                                headtext: "Comment vas-tu Ich bin spat heute"
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          children: [
                            MyWidget(
                                hindimage: "image/16.png",
                                headtext: 'আমি ঠিক আছি আমি জার্মান ভাষা জানি না'
                            ),
                            const SizedBox(height: 16),
                            MyWidget(
                                hindimage: "image/14.png",
                                headtext: 'আমি ঠিক আছি আমি জার্মান ভাষা জানি না'
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}