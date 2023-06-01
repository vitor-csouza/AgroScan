import 'package:app/components/custom_card.dart';
import 'package:app/components/statistic_content.dart';
import 'package:flutter/material.dart';

import '../repository/tips.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgroScan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const Text(
              'Monitore suas plantações com precisão e inteligência',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  Expanded(
                    child: CustomCard(
                      child: StatisticContent(
                        label: 'Plantações Monitoradas',
                        value: '500+',
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      child: StatisticContent(
                        label: 'Área Total Coberta',
                        value: '10,000+ hectares',
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      child: StatisticContent(
                        label: 'Análises Realizadas',
                        value: '5,000+',
                      ),
                    ),
                  ),
                ],
              ),

            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Dicas rápidas de agriculura',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            Column(
              children: tips.map((tip) {
                return ListTile(
                  title: Text(tip, textAlign: TextAlign.justify,),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
