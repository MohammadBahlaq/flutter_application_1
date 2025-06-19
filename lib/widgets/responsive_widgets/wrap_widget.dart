import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap widget')),
      body: SizedBox.expand(
        child: Wrap(
          alignment: WrapAlignment.end,
          direction: Axis.horizontal,
          verticalDirection: VerticalDirection.down,
          textDirection: TextDirection.ltr,
          spacing: 20,
          runSpacing: 10,
          runAlignment: WrapAlignment.spaceBetween,
          children: List.generate(
            15,
            (index) => Container(
              height: 80,
              width: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text('$index', style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
      ),
      // body: Wrap(
      //   runAlignment: WrapAlignment.start,
      //   children: List.generate(
      //     15,
      //     (index) => Container(
      //       height: 80,
      //       width: 80,
      //       color: Colors.red,
      //       child: Text('$index', style: TextStyle(fontSize: 30)),
      //     ),
      //   ),
      // ),
    );
  }
}
