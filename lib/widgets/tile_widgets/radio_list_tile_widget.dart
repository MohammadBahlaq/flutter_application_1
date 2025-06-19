import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  String answer = '';
  int age = 0;

  int? count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RadioListTile widgt')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                // Text('How many peaople in Jordan?'),
                // Radio(
                //   value: 10,
                //   groupValue: count,
                //   onChanged: (value) {
                //     count = value;
                //     setState(() {});
                //   },
                // ),
                // Radio(
                //   value: 15,
                //   groupValue: count,
                //   onChanged: (value) {
                //     count = value;
                //     setState(() {});
                //   },
                // ),
                // Radio(
                //   value: 7,
                //   groupValue: count,
                //   onChanged: (value) {
                //     count = value;
                //     setState(() {});
                //   },
                // ),
                // Radio(
                //   value: 10,
                //   groupValue: 11,
                //   fillColor: WidgetStateProperty.fromMap({
                //     WidgetState.selected: Colors.green,
                //     WidgetState.any: Colors.red,
                //   }),
                //   onChanged: (value) {
                //     print(value);
                //   },
                // ),
                // RadioListTile.adaptive(
                //   value: 10,
                //   groupValue: 11,
                //   fillColor: WidgetStateProperty.fromMap({
                //     WidgetState.selected: Colors.green,
                //     WidgetState.any: Colors.red,
                //   }),
                //   onChanged: (value) {
                //     print(value);
                //   },
                //   tileColor: Colors.grey,
                // ),
                Row(
                  children: [
                    Radio<int>.adaptive(
                      value: 0,
                      groupValue: age,
                      onChanged: (value) {
                        age = value ?? 0;
                        setState(() {});
                      },
                      fillColor: WidgetStateProperty.fromMap({
                        WidgetState.selected: Colors.green,
                        WidgetState.any: Colors.red,
                        // WidgetState.disabled: Colors.blue,
                        // WidgetState.dragged: Colors.blue,
                        // WidgetState.error: Colors.blue,
                        // WidgetState.focused: Colors.blue,
                        // WidgetState.hovered: Colors.blue,
                        // WidgetState.pressed: Colors.blue,
                        // WidgetState.scrolledUnder: Colors.blue,
                      }),
                    ),
                    Text('Remember me'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RadioListTile<int>.adaptive(
                    value: 1,
                    groupValue: age,
                    tileColor: Colors.white,
                    title: Text('Remember me'),
                    subtitle: Text('Login'),
                    fillColor: WidgetStateProperty.fromMap({
                      WidgetState.selected: Colors.green,
                      WidgetState.any: Colors.red,
                    }),
                    secondary: Icon(Icons.login),
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onChanged: (value) {
                      age = value ?? 0;
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RadioListTile<int>.adaptive(
                    value: 2,
                    groupValue: age,
                    tileColor: Colors.white,
                    title: Text('Remember me'),
                    subtitle: Text('Login'),
                    secondary: Icon(Icons.login),
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onChanged: (value) {
                      age = value ?? 0;
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RadioListTile<int>.adaptive(
                    value: 25,
                    groupValue: age,
                    tileColor: Colors.white,
                    title: Text('Remember me'),
                    subtitle: Text('Login'),
                    secondary: Icon(Icons.login),
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onChanged: (value) {
                      age = value ?? 0;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
              height: 30,
              endIndent: 20,
              indent: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RadioListTile<String>.adaptive(
                    value: '1',
                    groupValue: answer,
                    tileColor: Colors.white,
                    title: Text('Remember me'),
                    subtitle: Text('Login'),
                    secondary: Icon(Icons.login),
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onChanged: (value) {
                      answer = value ?? '';
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RadioListTile<String>.adaptive(
                    value: '2',
                    groupValue: answer,
                    tileColor: Colors.white,
                    title: Text('Remember me'),
                    subtitle: Text('Login'),
                    secondary: Icon(Icons.login),
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onChanged: (value) {
                      answer = value ?? '';
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RadioListTile<String>.adaptive(
                    value: '3',
                    groupValue: answer,
                    tileColor: Colors.white,
                    title: Text('Remember me'),
                    subtitle: Text('Login'),
                    secondary: Icon(Icons.login),
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onChanged: (value) {
                      answer = value ?? '';
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
