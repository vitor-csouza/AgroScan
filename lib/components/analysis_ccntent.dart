import 'package:flutter/material.dart';

class AnalysisContent extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> list;

  const AnalysisContent(
      {super.key, required this.icon, required this.list, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: list.isEmpty ? Colors.green : Colors.red,
          size: 40,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Column(
          children: list.map((item) => buildListItem(item)).toList(),
        ),
      ],
    );
  }

  Widget buildListItem(String item) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 5.0),
      child: Text(
        item,
        style: const TextStyle(fontSize: 14.0),
        textAlign: TextAlign.start,
      ),
    );
  }
}
