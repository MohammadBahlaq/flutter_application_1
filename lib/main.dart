// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/content_widgets/app_bar_widget.dart';
import 'package:flutter_application_1/widgets/content_widgets/container_widget.dart';
import 'package:flutter_application_1/widgets/content_widgets/image_widget.dart';
import 'package:flutter_application_1/widgets/content_widgets/new_custom_widget.dart';
import 'package:flutter_application_1/widgets/interactive_widgets/buttons_widgest.dart';
import 'package:flutter_application_1/widgets/interactive_widgets/custom_buttons.dart';
import 'package:flutter_application_1/widgets/interactive_widgets/flutter_livecycle.dart';
import 'package:flutter_application_1/widgets/interactive_widgets/gesture_inkwell_buttons.dart';
import 'package:flutter_application_1/widgets/interactive_widgets/text_button_widget.dart';
import 'package:flutter_application_1/widgets/interactive_widgets/text_field_widget.dart';
import 'package:flutter_application_1/widgets/layout_widgets/column_widget.dart';
import 'package:flutter_application_1/widgets/layout_widgets/padding_widget.dart';
import 'package:flutter_application_1/widgets/layout_widgets/row_widget.dart';
import 'package:flutter_application_1/widgets/layout_widgets/stack_widget.dart';
import 'package:flutter_application_1/widgets/scrollable_layout_widgets/grid_view_widget.dart';
import 'package:flutter_application_1/widgets/scrollable_layout_widgets/list_generate.dart';
import 'package:flutter_application_1/widgets/scrollable_layout_widgets/list_view_widget.dart';
import 'package:flutter_application_1/widgets/scrollable_layout_widgets/page_view_widget.dart';
import 'package:flutter_application_1/widgets/scrollable_layout_widgets/single_child_scroll_view_widget.dart';

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
      home: ListGenerate(),
      // routes: {
      //   'pageOne': (_) => PageOne(),
      //   'pageTwo': (_) => PageTwo(),
      //   'pagethree': (_) => PageThree(),
      // },
    );
  }
}
