// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/api_example/posts/controller/post_controller.dart';
import 'package:flutter_application_1/api_example/posts/view/posts_view.dart';
import 'package:flutter_application_1/packages/geolocator_package.dart';
import 'package:flutter_application_1/packages/lottie_package.dart';
import 'package:flutter_application_1/packages/permission_handler_package.dart';
import 'package:flutter_application_1/packages/secure_storge_2.dart';
import 'package:flutter_application_1/packages/secure_storge_package.dart';
import 'package:flutter_application_1/packages/shared_preferences_package.dart';
import 'package:flutter_application_1/packages/svg_package.dart';
import 'package:flutter_application_1/packages/url_lanucher_package.dart';
import 'package:flutter_application_1/provider_example/provider_package.dart';
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
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:short_navigation/short_navigation.dart';

late SharedPreferences prefs;
late FlutterSecureStorage secureStorage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  prefs = await SharedPreferences.getInstance();

  secureStorage = FlutterSecureStorage(
    aOptions: const AndroidOptions(encryptedSharedPreferences: true),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   navigatorKey: Go.navigatorKey,
    //   theme: ThemeData(
    //     useMaterial3: true,
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //   ),
    //   home: PostsView(),
    //   routes: {
    //     'pageOne': (_) => PageOne(),
    //     'pageTwo': (_) => PageTwo(),
    //     'pageThree': (_) => PageThree(),
    //   },
    // );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostController()..getPosts()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Go.navigatorKey,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: PostsView(),
        routes: {
          'pageOne': (_) => PageOne(),
          'pageTwo': (_) => PageTwo(),
          'pageThree': (_) => PageThree(),
        },
      ),
    );
  }
}
