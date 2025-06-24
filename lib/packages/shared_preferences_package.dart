import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/prefs_keys.dart';
import 'package:flutter_application_1/main.dart';

class SharedPreferencesPackage extends StatefulWidget {
  const SharedPreferencesPackage({super.key});

  @override
  State<SharedPreferencesPackage> createState() =>
      _SharedPreferencesPackageState();
}

class _SharedPreferencesPackageState extends State<SharedPreferencesPackage> {
  int counter = 0;

  @override
  void initState() {
    counter = prefs.getInt(PrefsKeys.counter) ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('SharedPreferences package')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter++;
          prefs.setInt(PrefsKeys.counter, counter);
          setState(() {});
        },
      ),
      body: Column(
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          MyWidget(),
        ],
      ),
      // body: Center(child: Text('$counter', style: TextStyle(fontSize: 30))),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    print('ElevatedButton rebuild');
    return ElevatedButton(
      onPressed: () {
        setState(() {});
      },
      child: Text('Rebuild widget'),
    );
  }
}
