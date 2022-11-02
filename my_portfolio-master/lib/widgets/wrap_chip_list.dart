import 'package:flutter/material.dart';
import 'my_chip.dart';

class WrapChipList extends StatelessWidget {
  const WrapChipList({this.children});

  final List<MyChip> children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 4,
      direction: Axis.horizontal,
      children: children,
    );
  }
}
