import 'package:curso_basico_flutter/background.dart';
import 'package:curso_basico_flutter/curso_basico.dart';
import 'package:curso_basico_flutter/dashboard.dart';
import 'package:curso_basico_flutter/lista.dart';

import 'package:curso_basico_flutter/tarjetas.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Dashboard(),
    const CursoBasicoPage(),
    const Lista(),
  ];

  void onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {},
            child: const Center(
                child: Text(
              "Curso de Flutter",
              style: TextStyle(fontStyle: FontStyle.italic),
            )),
          ),
          backgroundColor: Colors.white,
          actions: const [
            Icon(Icons.person, color: Colors.black12),
            Icon(
              Icons.settings,
              color: Colors.amber,
            )
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onNavItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configuración",
            ),
          ],
        ));
  }
}
