import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Page Not Found',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        ),
      ),
    );
  }
}
