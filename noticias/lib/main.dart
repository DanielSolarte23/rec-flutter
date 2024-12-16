import 'package:flutter/material.dart';
import "package:noticias/views/noticias.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alquiler de vehiculos',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
