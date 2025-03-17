import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String hindimage;
  final String headtext;

  const MyWidget({super.key, required this.hindimage, required this.headtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            hindimage,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headtext,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.2,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Row(
                children: const [
                  Icon(Icons.star_outline, size: 16, color: Colors.black54),
                  SizedBox(width: 4),
                  Text(
                    "মন্তব্য করতে পারেন",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.mic, size: 16, color: Colors.black54),
                    SizedBox(width: 4),
                    Icon(Icons.graphic_eq, size: 16, color: Colors.black54),
                    SizedBox(width: 4),
                    Text(
                      "Listen",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}