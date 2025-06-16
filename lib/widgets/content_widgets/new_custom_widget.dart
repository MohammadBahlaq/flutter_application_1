import 'package:flutter/material.dart';

class NewCustomWidget extends StatelessWidget {
  const NewCustomWidget({super.key});

  //F2
  //fn + F2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New custom widget')),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return MyCustomWidget(
                  color: Colors.red,
                  text: 'Student $index',
                );
              },
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return MyCustomWidget(
                  color: Colors.blue,
                  text: 'Employee $index',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key, required this.color, this.text = ''});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text),
    );
  }
}
