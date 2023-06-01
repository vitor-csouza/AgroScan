import 'package:app/screens/analysis_screen.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/screens/image_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/image_list':(context) => ImageScreen(),
        AnalysisScreen.routeName:(context) =>
          const AnalysisScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
