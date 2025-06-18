import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  const CheckBoxListTileWidget({super.key});

  @override
  State<CheckBoxListTileWidget> createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckBoxListTile widgt')),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox.adaptive(
                checkColor: Colors.white,
                fillColor: WidgetStateProperty.fromMap({
                  WidgetState.selected: Colors.red,
                  WidgetState.any: Colors.white,
                }),
                side: BorderSide(color: Colors.red, width: 2),
                value: rememberMe,
                onChanged: (value) {
                  rememberMe = value ?? false;
                  setState(() {});
                  print(value);
                },
              ),
              Text('Remember me'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CheckboxListTile(
              checkColor: Colors.white,
              fillColor: WidgetStateProperty.fromMap({
                WidgetState.selected: Colors.red,
                WidgetState.any: Colors.white,
              }),
              side: BorderSide(color: Colors.red, width: 2),
              value: rememberMe,
              tileColor: Colors.grey,
              onChanged: (value) {
                rememberMe = value ?? false;
                setState(() {});
                print(value);
              },
              controlAffinity: ListTileControlAffinity.leading,
              secondary: Icon(Icons.add),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              title: Text('Remember me'),
              subtitle: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
