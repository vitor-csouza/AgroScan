import 'package:app/components/custom_card.dart';
import 'package:app/screens/image_screen.dart';
import 'package:flutter/material.dart';

import '../components/analysis_ccntent.dart';

class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  static const routeName = '/analysis';

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final plantation = args.plantation;

    return Scaffold(
      appBar: AppBar(
        title: Text(plantation.id),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              plantation.imagePath,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    plantation.analysis.crop,
                    style: const TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: CustomCard(
                                child: AnalysisContent(
                                  icon: Icons.pest_control,
                                  title: plantation.analysis.pests.isEmpty
                                      ? 'Não há pragas em sua plantação'
                                      : 'Pragas',
                                  list: plantation.analysis.pests,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomCard(
                                child: AnalysisContent(
                                  icon: Icons.bug_report,
                                  title: plantation.analysis.diseases.isEmpty
                                      ? 'Sua plantação não está com doenças'
                                      : 'Doenças',
                                  list: plantation.analysis.diseases,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      IntrinsicHeight(
                          child: Row(
                        children: [
                          Expanded(
                            child: CustomCard(
                              child: AnalysisContent(
                                icon: Icons.grain,
                                title: plantation
                                        .analysis.nutrientDeficiencies.isEmpty
                                    ? 'Não há nutrientes faltando'
                                    : 'Nutrientes Faltando',
                                list: plantation.analysis.nutrientDeficiencies,
                              ),
                            ),
                          ),
                          Expanded(
                            child: CustomCard(
                                child: Column(children: [
                              Icon(
                                Icons.water_drop,
                                color: plantation.analysis.irrigationNeeded
                                    ? Colors.green
                                    : Colors.red,
                                size: 40,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                plantation.analysis.irrigationNeeded
                                    ? 'Sua plantação está hidratada'
                                    : 'Sua plantação Precisa de Irrigação',
                                textAlign: TextAlign.center,
                              )
                            ])),
                          ),
                        ],
                      )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomCard(
                    child: Column(
                      children: [
                        const Text(
                          'Recomendações:',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          plantation.analysis.recommendations,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
