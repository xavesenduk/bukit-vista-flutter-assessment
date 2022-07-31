import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final String tabTitle;
  const Tabs({Key? key, required this.tabTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        tabTitle,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
