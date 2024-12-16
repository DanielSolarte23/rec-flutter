import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  // Lista de páginas/secciones disponibles
  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Inicio',
      'icon': Icons.home_outlined,
    },
    {
      'title': 'Deportes',
      'icon': Icons.sports_baseball_outlined,
    },
    {
      'title': 'Tecnología',
      'icon': Icons.computer_outlined,
    },
    {
      'title': 'Entretenimiento',
      'icon': Icons.apps_outlined,
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación de Noticias'),
      ),
      // Implementación del Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // Generamos los ListTile del drawer dinámicamente
            ..._pages.asMap().entries.map((entry) {
              return ListTile(
                leading: Icon(entry.value['icon']),
                title: Text(entry.value['title']),
                selected: _selectedIndex == entry.key,
                onTap: () {
                  _onItemTapped(entry.key);
                  Navigator.pop(context); // Cierra el drawer
                },
              );
            }).toList(),
          ],
        ),
      ),
      // Contenido principal centrado
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sección: ${_pages[_selectedIndex]['title']}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      // Implementación del BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: _pages.map((page) {
          return BottomNavigationBarItem(
            icon: Icon(page['icon']),
            label: page['title'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // Configuramos para mostrar todos los items
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}