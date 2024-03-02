import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    super.key,
    required this.color,
    required this.imagePath,
    required this.title,
  });

  final String imagePath;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: color,
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 40,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
