// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/packages/url_lanucher_package.dart';
import 'package:flutter_application_1/widgets/bottom_sheet_widget.dart';
import 'package:flutter_application_1/widgets/navigation_widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter_application_1/widgets/navigation_widgets/navigation.dart';
import 'package:flutter_application_1/widgets/navigation_widgets/tab_bar_widget.dart';
import 'package:flutter_application_1/widgets/responsive_widgets/expanded_widget.dart';
import 'package:flutter_application_1/widgets/responsive_widgets/fitted_box_widget.dart';
import 'package:flutter_application_1/widgets/responsive_widgets/flexible_widget.dart';
import 'package:flutter_application_1/widgets/responsive_widgets/mediaquery_class.dart';
import 'package:flutter_application_1/widgets/responsive_widgets/wrap_widget.dart';
import 'package:flutter_application_1/widgets/show_methods.dart';
import 'package:flutter_application_1/widgets/tile_widgets/radio_list_tile_widget.dart';
import 'package:flutter_application_1/widgets/tile_widgets/switch_list_tile_widget.dart';
import 'package:short_navigation/short_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitUp,
  // ]);

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
      home: UrlLanucherPackage(),
      routes: {
        'pageOne': (_) => PageOne(),
        'pageTwo': (_) => PageTwo(),
        'pageThree': (_) => PageThree(),
      },
    );
  }
}
