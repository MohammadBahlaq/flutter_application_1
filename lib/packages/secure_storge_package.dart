import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/prefs_keys.dart';
import 'package:flutter_application_1/main.dart';

class SecureStorgePackage extends StatefulWidget {
  const SecureStorgePackage({super.key});

  @override
  State<SecureStorgePackage> createState() => _SecureStorgePackageState();
}

class _SecureStorgePackageState extends State<SecureStorgePackage> {
  late int counter;

  late bool isLoading;

  Future<void> initCounter() async {
    counter = int.parse(
      await secureStorage.read(key: PrefsKeys.counter) ?? '0',
    );

    await Future.delayed(Duration(seconds: 3)); //Optional

    isLoading = false;
    setState(() {});
    print("counter3 => $counter");
  }

  @override
  void initState() {
    print("counter1 => ");
    isLoading = true;
    initCounter();
    print("counter2 => ");
    super.initState();
  }

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
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.red,
                // backgroundColor: Colors.transparent,
                // valueColor: AlwaysStoppedAnimation(Colors.red),
              ),
            )
          : Center(child: Text('$counter', style: TextStyle(fontSize: 30))),
    );
  }
}
