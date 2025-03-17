import 'package:flutter/material.dart';

class Vocabolari extends StatefulWidget {
  const Vocabolari({super.key});

  @override
  _VocabularyPageState createState() => _VocabularyPageState();
}

class _VocabularyPageState extends State<Vocabolari> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Vocabulary",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Vocabulary Banner Image
          Container(
            width: double.infinity,
            height: 300,
            margin: const EdgeInsets.all(16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "image/19.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Toggle Buttons
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => setState(() => selectedIndex = 0),
                    child: _buildToggleButton(0, "Word"),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => setState(() => selectedIndex = 1),
                    child: _buildToggleButton(1, "Pronunciation"),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => setState(() => selectedIndex = 2),
                    child: _buildToggleButton(2, "Meaning"),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Vocabulary Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 3,
              ),
              itemCount: 21,
              itemBuilder: (context, index) {
                return _buildWordButton();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToggleButton(int index, String text) {
    final bool isSelected = selectedIndex == index;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xff2E826E) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? Colors.transparent : Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.volume_up,
            color: isSelected ? Colors.white : Colors.black54,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black54,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWordButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.volume_up,
            color: Colors.black45,
            size: 14,
          ),
          SizedBox(width: 4),
          Flexible(
            child: Text(
              "Hallo...",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}