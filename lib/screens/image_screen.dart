import 'package:app/models/plantation_image.dart';
import 'package:app/repository/plantation_repository.dart';
import 'package:app/components/list_item.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final List<PlantationImage> plantations =
      PlantationImageRepository().getPlantation();

  ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgroScan'),
        centerTitle: true,),
      body: ListView.builder(
        itemCount: plantations.length,
        itemBuilder: (context, index) {
          return Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: ListItem(
                imagePath: plantations[index].imagePath,
                content: Text(
                  plantations[index].id,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                plantation: plantations[index],
              ));
        },
      ),
    );
  }
}

class ScreenArguments {
  final PlantationImage plantation;

  ScreenArguments(this.plantation);
}
