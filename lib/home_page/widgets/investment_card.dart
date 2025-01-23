import 'package:flutter/material.dart';

class InvestmentCard extends StatelessWidget {
  final String title;
  final String amount;
  final String subtitle;

  const InvestmentCard(
      {super.key,
      required this.title,
      required this.amount,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF2B2B2B),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              amount,
              style: TextStyle(
                color: Colors.yellow.shade700,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
