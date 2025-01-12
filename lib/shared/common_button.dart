import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CommonButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF92622C),
              Color(0xFFE9DD91),
              Color(0xFFE9DD91),
              Color(0xFF92622C),
            ],
            stops: [0.0988, 0.4079, 0.7156, 1.1077],
          ),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0xFFDCB56D)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Roboto Flex',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF222222),
            ),
          ),
        ),
      ),
    );
  }
}
