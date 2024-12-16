import 'package:flutter/material.dart';

class CitasMedicasPage extends StatefulWidget {
  const CitasMedicasPage({Key? key}) : super(key: key);

  @override
  State<CitasMedicasPage> createState() => _CitasMedicasPageState();
}

class _CitasMedicasPageState extends State<CitasMedicasPage> {
  final List<String> especialidades = [
    'Medicina General',
    'Odontología',
    'Psicología',
    'Cardiología',
    'Neurología',
    'Ginecología',
    'Dermatología',
    'Pediatría',
    'Oftalmología',
    'Ortopedia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Citas Médicas'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: especialidades.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.medical_services),
            title: Text(especialidades[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EspecialidadDetailPage(
                    especialidad: especialidades[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}