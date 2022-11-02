import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  const MyChip({this.title, this.icon, this.onPressed});

  final String title;
  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: icon,
      label: Text(title),
      onPressed: onPressed,
    );
  }
}
