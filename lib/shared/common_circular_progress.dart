import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double strokeWidth;
  final double size;

  const CustomCircularProgressIndicator({
    super.key,
    this.strokeWidth = 4.0,
    this.size = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        valueColor: const AlwaysStoppedAnimation<Color>(
          Color(0xFFDCB56D), // Yellow Border Color
        ),
        // backgroundColor: const Color(0xFFE9DD91), // Light Yellow Background
      ),
    );
  }
}
