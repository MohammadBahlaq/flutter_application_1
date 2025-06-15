import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView widget')),

      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        physics: BouncingScrollPhysics(),
        reverse: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          mainAxisExtent: 150,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Container(
            color: index.isOdd ? Colors.red : Colors.green,
            alignment: Alignment.center,
            child: Text('$index'),
          );
        },
      ),

      // body: GridView(
      //   padding: EdgeInsets.symmetric(horizontal: 10),
      //   physics: BouncingScrollPhysics(),
      //   reverse: false,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 15,
      //     mainAxisSpacing: 20,
      //     mainAxisExtent: 150,
      //   ),
      //   children: [
      //     Container(color: Colors.red),
      //     Container(color: Colors.blue),
      //     Container(color: Colors.green),
      //     Container(color: Colors.black),
      //     Container(color: Colors.purple),
      //     Text("data"),
      //     Text("data"),
      //     Text("data"),
      //     Icon(Icons.add),
      //     Icon(Icons.remove),
      //     Icon(Icons.shopping_cart),
      //     Icon(Icons.delete),
      //   ],
      // ),

      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10,
      //     mainAxisExtent: 200,
      //   ),
      //   padding: EdgeInsets.all(10),
      //   scrollDirection: Axis.vertical,
      //   physics: BouncingScrollPhysics(),
      //   itemCount: 15,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 100,
      //       color: index.isOdd ? Colors.green : Colors.red,
      //       alignment: Alignment.center,
      //       child: Text('$index'),
      //     );
      //   },
      // ),
    );
  }
}
