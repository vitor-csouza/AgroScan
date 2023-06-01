
class Analysis{
 final String crop;
  final List<String> pests;
  final List<String> diseases;
  final List<String> nutrientDeficiencies;
  final bool irrigationNeeded;
  final String recommendations;


  const Analysis(this.crop, this.pests, this.diseases, this.nutrientDeficiencies, this.irrigationNeeded, this.recommendations); 
}