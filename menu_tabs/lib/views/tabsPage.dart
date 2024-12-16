import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Número de tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text('Navegación con Tabs'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.article_outlined),
                text: 'Noticias',
              ),
              Tab(
                icon: Icon(Icons.message_outlined),
                text: 'Mensajes',
              ),
              Tab(
                icon: Icon(Icons.person_outline),
                text: 'Perfil',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Contenido de la pestaña Noticias
            Center(
              child: Text(
                'Pestaña de Noticias',
                style: TextStyle(fontSize: 24),
              ),
            ),
            // Contenido de la pestaña Mensajes
            Center(
              child: Text(
                'Pestaña de Mensajes',
                style: TextStyle(fontSize: 24),
              ),
            ),
            // Contenido de la pestaña Perfil
            Center(
              child: Text(
                'Pestaña de Perfil',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}