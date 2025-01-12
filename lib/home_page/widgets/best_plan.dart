import 'package:flutter/material.dart';

class BestPlans extends StatelessWidget {
  final List<Map<String, String>> plans;

  const BestPlans({
    super.key,
    this.plans = const [
      {'interest': '9.10%', 'duration': '1 year 4 Months'},
      {'interest': '8.45%', 'duration': '1 year 8 Months'},
      {'interest': '8.12%', 'duration': '1 year 11 Months'},
      {'interest': '7.65%', 'duration': '2 year 4 Months'},
      {'interest': '7.5%', 'duration': '2 year 9 Months'},
      {'interest': '6.49%', 'duration': '3 year 4 Months'},
      {'interest': '5.15%', 'duration': '3 year 10 Months'},
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 286,
      padding: const EdgeInsets.fromLTRB(18, 13, 18, 13),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Best Plans',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Roboto Flex',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            height: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Interested',
                style: TextStyle(
                  color: Color(0xFFC3C3C3),
                  fontSize: 14,
                  fontFamily: 'Roboto Flex',
                ),
              ),
              Text(
                'Interested',
                style: TextStyle(
                  color: Color(0xFFC3C3C3),
                  fontSize: 14,
                  fontFamily: 'Roboto Flex',
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...plans.map((plan) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      plan['interest']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto Flex',
                      ),
                    ),
                    Text(
                      plan['duration']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto Flex',
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
