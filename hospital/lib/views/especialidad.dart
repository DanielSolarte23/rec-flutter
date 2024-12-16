// especialidad_detail_page.dart
import 'package:flutter/material.dart';

class EspecialidadDetailPage extends StatefulWidget {
  final String especialidad;

  const EspecialidadDetailPage({
    Key? key,
    required this.especialidad,
  }) : super(key: key);

  @override
  State<EspecialidadDetailPage> createState() => _EspecialidadDetailPageState();
}

class _EspecialidadDetailPageState extends State<EspecialidadDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.especialidad),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text('Detalles de ${widget.especialidad}'),
      ),
    );
  }
}