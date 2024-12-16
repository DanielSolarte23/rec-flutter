import 'package:flutter/material.dart';

class GenericPage extends StatefulWidget {
  final String title;

  const GenericPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<GenericPage> createState() => _GenericPageState();
}

class _GenericPageState extends State<GenericPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text('Página de ${widget.title}'),
      ),
    );
  }
}