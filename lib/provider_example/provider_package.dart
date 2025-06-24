import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider_example/counter_controller.dart';
import 'package:provider/provider.dart';

class ProviderPackage extends StatelessWidget {
  const ProviderPackage({super.key});

  @override
  Widget build(BuildContext _) {
    print('build');

    return ChangeNotifierProvider(
      create: (_) => CounterController(),
      child: Builder(
        builder: (context) {
          final counterCrt = context.read<CounterController>();

          return Scaffold(
            appBar: AppBar(title: Text('Provider package')),
            floatingActionButton: FloatingActionButton(
              onPressed: counterCrt.incrementCounter,
              child: Icon(Icons.add),
            ),

            body: Center(
              child: Consumer<CounterController>(
                builder: (_, counterCrt, _) {
                  print('Consumer rebuild');
                  return Text(
                    '${counterCrt.counter}',
                    style: TextStyle(fontSize: 30),
                  );
                },
              ),

              // child: Selector<CounterController, int>(
              //   selector: (p0, p1) => p1.counter,
              //   builder: (context, value, child) {
              //     return Text('$value', style: TextStyle(fontSize: 30));
              //   },
              // ),
            ),

            // body: Center(
            //   child:
            //       Selector<
            //         CounterController,
            //         ({int counter, bool counterAbove5})
            //       >(
            //         selector: (p0, p1) =>
            //             (counter: p1.counter, counterAbove5: p1.counterAbove5),
            //         builder: (context, recored, child) {
            //           print('Selector rebuild');
            //           return Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text(
            //                 '${recored.counter}',
            //                 style: TextStyle(fontSize: 30),
            //               ),
            //               Text(
            //                 'Above 5? ${recored.counterAbove5}',
            //                 style: TextStyle(fontSize: 30),
            //               ),
            //             ],
            //           );
            //         },
            //       ),
            // ),
          );
        },
      ),
    );
  }
}

///Permisions
///Lottie
///Svg
///Geolocator
///Provider
///Selector
///Consumer
///with ChangeNotifier
///ChangeNotifierProvider
///create: (_) => CounterController(),
