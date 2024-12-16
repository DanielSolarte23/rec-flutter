// home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MenuOption> menuOptions = [
    MenuOption(title: 'Citas Médicas', icon: Icons.medical_services, color: Colors.blue),
    MenuOption(title: 'Urgencias', icon: Icons.local_hospital, color: Colors.red),
    MenuOption(title: 'Especialista', icon: Icons.person, color: Colors.green),
    MenuOption(title: 'Farmacia', icon: Icons.local_pharmacy, color: Colors.orange),
    MenuOption(title: 'Pacientes', icon: Icons.people, color: Colors.purple),
    MenuOption(title: 'Terapias', icon: Icons.healing, color: Colors.teal),
    MenuOption(title: 'Laboratorio', icon: Icons.science, color: Colors.amber),
    MenuOption(title: 'Sangre', icon: Icons.bloodtype, color: Colors.red),
    MenuOption(title: 'Rehabilitación', icon: Icons.accessibility_new, color: Colors.indigo),
    MenuOption(title: 'Consultas', icon: Icons.assignment, color: Colors.brown),
    MenuOption(title: 'Informes', icon: Icons.description, color: Colors.grey),
    MenuOption(title: 'Calendario', icon: Icons.calendar_today, color: Colors.cyan),
    MenuOption(title: 'Pagos', icon: Icons.payment, color: Colors.deepOrange),
    MenuOption(title: 'Contactos', icon: Icons.contacts, color: Colors.pink),
    MenuOption(title: 'Información', icon: Icons.info, color: Colors.lightBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Hospital'),
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: menuOptions.length,
        itemBuilder: (context, index) {
          return MenuItemWidget(menuOption: menuOptions[index]);
        },
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  final MenuOption menuOption;

  const MenuItemWidget({
    Key? key,
    required this.menuOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          if (menuOption.title == 'Citas Médicas') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CitasMedicasPage(),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GenericPage(title: menuOption.title),
              ),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              menuOption.icon,
              size: 40,
              color: menuOption.color,
            ),
            const SizedBox(height: 8),
            Text(
              menuOption.title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuOption {
  final String title;
  final IconData icon;
  final Color color;

  MenuOption({
    required this.title,
    required this.icon,
    required this.color,
  });
}