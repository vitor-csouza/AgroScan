
import 'package:app/models/analysis.dart';

class PlantationImage{
  final String id;
  final double latitude;
  final double longitude;
  final String imagePath;
  final Analysis analysis;
  
  const PlantationImage(this.id, this.latitude, this.longitude, this.imagePath, this.analysis);

}

String generateId(double latitude, double longitude){
  return 'ID$latitude$longitude';
}
