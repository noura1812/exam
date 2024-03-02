import 'package:flutter/material.dart';

class WorkOut extends StatelessWidget {
  const WorkOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FC),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text('7 days'),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Morning Yoga',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Improve mental focus.',
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.timer_outlined,
                    color: Color(0xFF027A48),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '30 mins',
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            'assets/images/yoga-pic.png',
            width: 100,
          ),
        ],
      ),
    );
  }
}
