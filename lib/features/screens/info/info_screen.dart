import 'package:flutter/material.dart';

class InforScreen extends StatelessWidget {
  const InforScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Screen'),
      ),
      body: const Center(child: Text('Display Center Info'),),
    );
  }
}