
import 'package:flutter/material.dart';

class page21 extends StatefulWidget {
  const page21({super.key});

  @override
  State<page21> createState() => _QuizPageState();
}

class _QuizPageState extends State<page21> {
  int selectedAnswer = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Quiz",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Hearts Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color: Colors.grey[300], size: 28),
                const SizedBox(width: 8),
                ...List.generate(4, (index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.favorite, color: Colors.red, size: 28),
                )),
              ],
            ),
            const SizedBox(height: 32),

            // Quiz Image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                "image/37.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 32),

            // Question Text
            const Text(
              "What is this called in German?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),

            // Answer Options
            ...List.generate(4, (index) => _buildAnswerOption(
              index,
              ["Guten Morgen", "Guten Tag", "Gute Nacht", "Auf Wiedersehen"][index],
            )),

            const Spacer(),

            // Continue Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff2E826E),
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0,
              ),
              onPressed: selectedAnswer != -1 ? () {
                // Add navigation to next question
              } : null,
              child: const Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                 color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerOption(int index, String text) {
    bool isSelected = selectedAnswer == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAnswer = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff2E826E) : Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
          border: isSelected ? null : Border.all(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.white : Colors.transparent,
                border: Border.all(
                  color: isSelected ? Colors.white : Colors.grey[400]!,
                  width: 2,
                ),
              ),
              child: isSelected ? const Center(
                child: Icon(
                  Icons.check,
                  size: 16,
                  color: Color(0xff2E826E),
                ),
              ) : null,
            ),
            const SizedBox(width: 16),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}