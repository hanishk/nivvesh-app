import 'package:flutter/material.dart';
import 'package:nivvesh/constants/colors.dart';
import 'package:nivvesh/home_page/widgets/fd_comparison.dart';
import 'package:nivvesh/shared/common_scaffold.dart';

class FDComparisonPage extends StatefulWidget {
  const FDComparisonPage({super.key});

  @override
  State<FDComparisonPage> createState() => _FDComparisonPageState();
}

class _FDComparisonPageState extends State<FDComparisonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fixed Deposit Comparison',
            style: TextStyle(color: AppColors.kYellowColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              FdCardComparison(),
              FdCardComparison(),
              // FdCardComparison(),
              const SizedBox(height: 8),
              DetailedComparison(),
            ],
          ),
        ),
      ),
    );
  }
}
