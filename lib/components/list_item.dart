import 'package:app/models/plantation_image.dart';
import 'package:app/screens/image_screen.dart';
import 'package:flutter/material.dart';

import '../screens/analysis_screen.dart';

class ListItem extends StatelessWidget {
  
  final String imagePath;
  final Widget content;
  final PlantationImage plantation;

  const ListItem({super.key, required this.imagePath, required this.content, required this.plantation});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imagePath,
                  height: 150,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                content,
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AnalysisScreen.routeName,
                        arguments: ScreenArguments(plantation));
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
    );
  }
}
