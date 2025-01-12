import 'package:flutter/material.dart';

class FDCalResultCard extends StatelessWidget {
  const FDCalResultCard({
    super.key,
    required this.totalInvestment,
    required this.fdReturns,
    required this.totalReturns,
  });

  final double totalInvestment;
  final double fdReturns;
  final double totalReturns;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.grey.shade800,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total Investment:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "₹${totalInvestment.toStringAsFixed(0)}",
                    style: TextStyle(
                      color: Colors.yellow.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "FD Returns",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "₹${fdReturns.toStringAsFixed(0)}",
                    style: TextStyle(
                      color: Colors.yellow.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total Returns",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "₹${totalReturns.toStringAsFixed(0)}",
                    style: TextStyle(
                      color: Colors.yellow.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
