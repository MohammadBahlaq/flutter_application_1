import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_images.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding widget"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Image.asset(AppImages.garden),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Image.asset(AppImages.garden),
          ),
        ],
      ),
    );
  }
}
