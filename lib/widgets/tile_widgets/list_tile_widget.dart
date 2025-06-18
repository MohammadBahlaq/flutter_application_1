import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({super.key});

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListTile widget')),
      body: ListView.separated(
        padding: EdgeInsets.all(20),
        itemCount: 15,
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            splashColor: Colors.red,
            tileColor: Colors.grey[400],
            selectedTileColor: Colors.blue,
            selectedColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Colors.blue, width: 2),
            ),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.call),
            title: Text('Mohammad'),
            subtitle: Text('My Friend'),
            selected: selectedIndex == index,
          );
        },
      ),
    );
  }
}
