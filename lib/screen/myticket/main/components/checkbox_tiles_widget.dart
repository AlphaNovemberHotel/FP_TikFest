import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CBTWidget extends StatefulWidget {
  const CBTWidget({super.key});

  @override
  State<CBTWidget> createState() => _CBTWidgetState();
}

class _CBTWidgetState extends State<CBTWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Check All'),
      controlAffinity: ListTileControlAffinity.leading,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      activeColor: Colors.blue,
      checkColor: Colors.black,
    );
  }
}
