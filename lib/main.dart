// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_bar_widget.dart';
import 'package:flutter_application_1/widgets/column_widget.dart';
import 'package:flutter_application_1/widgets/container_widget.dart';
import 'package:flutter_application_1/widgets/floating_button.dart';
import 'package:flutter_application_1/widgets/gesture_inkwell_buttons.dart';
import 'package:flutter_application_1/widgets/image_widget.dart';
import 'package:flutter_application_1/widgets/padding_widget.dart';
import 'package:flutter_application_1/widgets/row_widget.dart';
import 'package:flutter_application_1/widgets/stack_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: PaddingWidget(),
    );
  }
}
