import 'package:flutter/material.dart';
import 'package:germankotha1/unilt/customrowpage.dart';

class Page15 extends StatelessWidget {
  const Page15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Image.asset(
                "image/32.png",
                height: 120,
                width: 120,
              ),
              const SizedBox(height: 16),
              const Text(
                "German Phrases",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),
              // First Group
              const Customrowofpage15(maintext: "German"),
              const SizedBox(height: 12),
              const Customrowofpage15(maintext: "Pronunciation"),
              const SizedBox(height: 12),
              const Customrowofpage15(maintext: "Meaning"),
              const SizedBox(height: 24),
              // Second Group
              const customrowmakebystart(maintext: 'German'),
              const SizedBox(height: 12),
              const customrowmakebystart(maintext: 'Pronunciation'),
              const SizedBox(height: 12),
              const customrowmakebystart(maintext: 'Meaning'),
              const SizedBox(height: 24),
              // Third Group
              const Customrowofpage15(maintext: "German"),
              const SizedBox(height: 12),
              const Customrowofpage15(maintext: "Pronunciation"),
              const SizedBox(height: 12),
              const Customrowofpage15(maintext: "Meaning"),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}