import 'package:flutter/material.dart';

class ListGenerate extends StatelessWidget {
  const ListGenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(100, (index) {
          return Text('$index');
        }),
      ),
    );
  }
}
