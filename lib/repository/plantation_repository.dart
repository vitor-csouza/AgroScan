import 'package:app/models/analysis.dart';
import 'package:app/models/plantation_image.dart';

class PlantationImageRepository{
  List<PlantationImage> getPlantation(){
    return [
      PlantationImage(
        generateId(129704, 385124),
        129704,
        385124,
        "images/corn001.jpg",
        const Analysis('Milho', ['Lagartas'], [], ['Nitrogênio'], false, 'Controle as lagartas com manejo integrado de pragas e corrija a falta de nitrogênio com fertilizantes adequados para o milho. Consulte um especialista agrícola para orientações personalizadas')
      ),
      PlantationImage(
        generateId(229068, 431729),
        229068,
        431729,
        "images/soybean001.jpg",
        const Analysis('Soja', [], ['Mofo-branco'], ['Fósforo', 'Nitrogênio'], true, 'Aplicar fungicidas contra o mofo-branco, corrigir a deficiência de nitrogênio e fósforo por meio da adubação adequada com fertilizantes balanceados.')
      ),
      PlantationImage(
        generateId(235505, 466333 ),
        235505,
        466333 ,
        "images/sugarcane001.jpg",
        const Analysis('Cana-de-Açúcar', ['Lagartas', 'Pulgões'], [], [], true, 'Adote medidas de controle integrado, como aplicação seletiva de inseticidas e fungicidas, para combater lagartas, pulgões e escaldura da folha na cana-de-açúcar.')
      ),
      PlantationImage(
        generateId(37319, 385267 ),
        37319,
        385267 ,
        "images/coffe001.jpg",
        const Analysis('Café', ['Cigarra'], ['Ferrugem'], ['Magnésio', 'Zinco'], false, 'Adote medidas de controle integrado, como aplicação seletiva de inseticidas e fungicidas, para combater as cigarras e a ferrugem. Além disso, corrija a deficiência de magnésio e zinco por meio da adubação adequada com fertilizantes balanceados')
      ),
      PlantationImage(
        generateId(157965, 478828 ),
        157965,
        478828 ,
        "images/cotton001.jpg",
        const Analysis('Algodão', ['Pulgões'], [], ['Potássio'], false, 'Adote medidas de controle integrado, como aplicação seletiva de inseticidas e fungicidas, para combater os pulgões. Além disso, corrija a deficiência de potássio por meio da adubação adequada com fertilizantes balanceado')
      ),
      PlantationImage(
        generateId(50920, 428037 ),
        50920,
        428037 ,
        "images/rice001.jpg",
        const Analysis('Arroz', [], [], [], true, 'Sua plantação está em boas condiçoes, continue fazendo um bom trabalho')
      ),
    ];
  }
}