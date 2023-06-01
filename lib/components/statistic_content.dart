import 'package:flutter/material.dart';

class StatisticContent extends StatelessWidget {

  final String label;
  final String value;

  const StatisticContent({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            textAlign: TextAlign.center,
          ),
        ],
    );
  }
}