import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/prefs_keys.dart';
import 'package:flutter_application_1/main.dart';

class SecureStorgePackage2 extends StatefulWidget {
  const SecureStorgePackage2({super.key});

  @override
  State<SecureStorgePackage2> createState() => _SecureStorgePackage2State();
}

class _SecureStorgePackage2State extends State<SecureStorgePackage2> {
  late int counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecureStorge package')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter++;
          secureStorage.write(key: PrefsKeys.counter, value: '$counter');
          setState(() {});
        },
      ),
      body: FutureBuilder(
        future: secureStorage.read(key: PrefsKeys.counter),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Text('${snapshot.data}', style: TextStyle(fontSize: 30)),
            );
          }

          return Center(child: Text('Error'));
        },
      ),
    );
  }
}
