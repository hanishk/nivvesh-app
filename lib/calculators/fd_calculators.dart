import 'package:flutter/material.dart';
import 'dart:math';

import 'package:nivvesh/calculators/widgets/fd_calc_result_card.dart';
import 'package:nivvesh/constants/themes.dart';

class FDCalculatorScreen extends StatefulWidget {
  const FDCalculatorScreen({super.key});

  @override
  State<FDCalculatorScreen> createState() => _FDCalculatorScreenState();
}

class _FDCalculatorScreenState extends State<FDCalculatorScreen> {
  // Slider values
  double principal = 100000.0; // Starting from 1L
  double rateOfInterest = 5.0; // Percentage
  double timePeriod = 1.0; // Years

  // Compounding Frequency Dropdown
  final List<String> compoundingOptions = [
    'Yearly',
    'Half Yearly',
    'Quarterly'
  ];
  String selectedFrequency = 'Yearly';
  int compoundingPeriods = 1; // n

  // Results
  double totalInvestment = 0.0;
  double fdReturns = 0.0;
  double totalReturns = 0.0;

  // Calculate compound interest
  void calculateFD() {
    setState(() {
      switch (selectedFrequency) {
        case 'Yearly':
          compoundingPeriods = 1;
          break;
        case 'Half Yearly':
          compoundingPeriods = 2;
          break;
        case 'Quarterly':
          compoundingPeriods = 4;
          break;
      }

      double amount = principal *
          pow((1 + (rateOfInterest / 100) / compoundingPeriods),
              compoundingPeriods * timePeriod);

      totalInvestment = principal;
      fdReturns = (amount - principal).roundToDouble();
      totalReturns = amount.roundToDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("FD Calculator",
            style: TextStyle(color: Colors.yellow.shade700)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Slider for Principal Amount
              const Text(
                'Principal Amount (₹)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Slider(
                activeColor: Colors.yellow.shade700,
                value: principal,
                min: 100000,
                max: 10000000,
                divisions: 100,
                label: principal.round().toString(),
                onChanged: (value) {
                  setState(() {
                    principal = value;
                    calculateFD();
                  });
                },
              ),
              // Text('₹${principal.round()}',
              //     style: const TextStyle(fontSize: 16)),

              // Slider for Rate of Interest
              const SizedBox(height: 16),
              const Text(
                'Rate of Interest (%)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Slider(
                activeColor: Colors.yellow.shade700,
                value: rateOfInterest,
                min: 1,
                max: 15,
                divisions: 140,
                label: rateOfInterest.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    rateOfInterest = value;
                    calculateFD();
                  });
                },
              ),
              Text('${rateOfInterest.toStringAsFixed(1)}%',
                  style: const TextStyle(fontSize: 16)),

              // Slider for Time Period
              const SizedBox(height: 16),
              const Text(
                'Time Period (Years)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Slider(
                activeColor: Colors.yellow.shade700,
                value: timePeriod,
                min: 1,
                max: 25,
                divisions: 24,
                label: timePeriod.round().toString(),
                onChanged: (value) {
                  setState(() {
                    timePeriod = value;
                    calculateFD();
                  });
                },
              ),
              Text('${timePeriod.round()} years',
                  style: const TextStyle(fontSize: 16)),

              // Dropdown for Compounding Frequency
              const SizedBox(height: 16),
              const Text(
                'Compounding Frequency',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                dropdownColor: AppTheme.darkTheme.primaryColor,
                value: selectedFrequency,
                items: compoundingOptions
                    .map((freq) =>
                        DropdownMenuItem(value: freq, child: Text(freq)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedFrequency = value!;
                    calculateFD();
                  });
                },
              ),

              const SizedBox(height: 24),
              FDCalResultCard(
                  totalInvestment: totalInvestment,
                  fdReturns: fdReturns,
                  totalReturns: totalReturns),
            ],
          ),
        ),
      ),
    );
  }
}
