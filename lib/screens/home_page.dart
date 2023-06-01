import 'package:app/screens/history_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/image_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
      const HomeScreen(),
      ImageScreen(),
      const HistoryScreen(),
    ]);
  }

  Widget getBottomNavigationBar() {
    final items = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Imagens'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.history), label: 'Histórico')
    ];

    return BottomNavigationBar(
      currentIndex: pageIndex,
      items: items,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
}
