import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Button"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leadingWidth: 100,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
        },
        child: Icon(Icons.add),
      ),
      body: Container(color: Colors.green),
    );
  }
}
