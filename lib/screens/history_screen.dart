import 'package:app/models/plantation_image.dart';
import 'package:app/repository/plantation_repository.dart';
import 'package:app/components/list_item.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final TextEditingController searchController = TextEditingController();
  final List<PlantationImage> plantations =
      PlantationImageRepository().getPlantation();
  List<PlantationImage> filteredDataList = [];

  @override
  void initState() {
    super.initState();
    filteredDataList = plantations;
  }

  void filterDataList(String searchText) {
    setState(() {
      searchText = searchText.toLowerCase();
      filteredDataList = plantations
          .where((e) =>
              e.id.toLowerCase().contains(searchText) ||
              e.analysis.crop.toLowerCase().contains(searchText))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgroScan'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onSubmitted: filterDataList,
              decoration: const InputDecoration(
                labelText: 'Busque uma imagem pelo id ou tipo de cultivo',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredDataList.length,
              itemBuilder: (context, index) {
                return ListItem(
                  imagePath: filteredDataList[index].imagePath,
                  content: Text(filteredDataList[index].id),
                  plantation: filteredDataList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
