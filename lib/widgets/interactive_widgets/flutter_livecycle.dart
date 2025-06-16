import 'package:flutter/material.dart';

class FlutterLivecycle extends StatefulWidget {
  const FlutterLivecycle({super.key});

  @override
  State<FlutterLivecycle> createState() => _FlutterLivecycleState();
}

class _FlutterLivecycleState extends State<FlutterLivecycle> {
  late int counter;

  @override
  void initState() {
    counter = 0;
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Livecycle')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return MyWidget(index: index);
      //   },
      // ),
      body: Center(child: Text('$counter', style: TextStyle(fontSize: 30))),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.index});

  final int index;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    print("initState ${widget.index}");
    super.initState();
  }

  @override
  void dispose() {
    print("dispose ${widget.index}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.red,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text("${widget.index}", style: TextStyle(fontSize: 30)),
    );
  }
}
