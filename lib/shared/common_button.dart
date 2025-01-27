import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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

class LoaderContainer extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final double loaderSize;

  const LoaderContainer({
    super.key,
    this.width = double.infinity,
    this.height = 48,
    this.borderRadius = 4,
    this.loaderSize = 26,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: const Color(0xFFDCB56D)),
      ),
      child: Center(
        child: SpinKitThreeBounce(
          color: const Color(0xFF222222),
          size: loaderSize,
        ),
      ),
    );
  }
}
