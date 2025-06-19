import 'package:flutter/material.dart';

class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({super.key});

  @override
  State<SwitchListTileWidget> createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SwitchListTile widgt')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Switch.adaptive(
              activeColor: Colors.red,
              inactiveThumbColor: Colors.black,
              activeTrackColor: Colors.brown,
              inactiveTrackColor: Colors.blue,
              trackOutlineColor: WidgetStateProperty.fromMap({
                WidgetState.selected: Colors.black,
                WidgetState.any: Colors.red,
              }),
              value: rememberMe,
              onChanged: (value) {
                rememberMe = value;
                setState(() {});
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: SwitchListTile.adaptive(
              tileColor: Colors.grey,
              title: Text('Remember me'),
              subtitle: Text('Login'),
              secondary: Icon(Icons.login),
              controlAffinity: ListTileControlAffinity.trailing,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              value: rememberMe,
              onChanged: (value) {
                rememberMe = value;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
