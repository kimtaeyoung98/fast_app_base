import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OsSwitch extends StatelessWidget {
  final bool isOn;
  final ValueChanged<bool> onTap;
  const OsSwitch({super.key, required this.isOn, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSwitch(value: isOn, onChanged: onTap)
        : Switch(value: isOn, onChanged: onTap);
  }
}
