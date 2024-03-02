import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFECFDF3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Positive vibes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Boost your mood with \npositive vibes',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_sharp,
                    color: Color(0xFF027A48),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '10 mins',
                  ),
                ],
              ),
            ],
          ),
          Image.asset('assets/images/ic-walkingdog.png'),
        ],
      ),
    );
  }
}
