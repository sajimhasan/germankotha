
import 'package:flutter/material.dart';

class Page17 extends StatelessWidget {
  const Page17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Story Time",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'image/34.png', // Replace with your actual image
                width: 250,
              ),
            ),
            const SizedBox(height: 20),

            // German Section
            _buildSectionTitle("German"),
            _buildDashedContainer(),
            _buildDashedContainer(),
            _buildDashedContainer(),
            const SizedBox(height: 10),
            _buildPronunciationButton(),
            _buildDashedContainer(),

            const SizedBox(height: 20),

            // Meaning Section
            _buildSectionTitle("Meaning"),
            _buildDashedContainer(),
            _buildDashedContainer(),
            const SizedBox(height: 10),
            _buildPronunciationButton(),
          ],
        ),
      ),
    );
  }

  // Section Title Widget
  Widget _buildSectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Dashed Line Representation
  Widget _buildDashedContainer() {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }

  // Pronunciation Button
  Widget _buildPronunciationButton() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      icon: const Icon(Icons.volume_up, color: Colors.black),
      label: const Text(
        "Pronunciation",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}