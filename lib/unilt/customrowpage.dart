import 'package:flutter/material.dart';

class Customrowofpage15 extends StatelessWidget {
  final String maintext;
  const Customrowofpage15({super.key, required this.maintext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 44,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              maintext,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Icon(
          Icons.volume_up,
          color: Colors.grey,
          size: 20,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 1,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}

class customrowmakebystart extends StatelessWidget {
  final String maintext;
  const customrowmakebystart({super.key, required this.maintext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        const SizedBox(width: 8),
        const Icon(
          Icons.volume_up,
          color: Colors.grey,
          size: 20,
        ),
        const SizedBox(width: 8),
        Container(
          height: 44,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              maintext,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
