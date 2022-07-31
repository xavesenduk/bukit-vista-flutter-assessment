import 'package:flutter/material.dart';

// Back button navigation component, used to navigate back to the previous screen
class BackButtonNavigation extends StatelessWidget {
  const BackButtonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: (() {
        Navigator.pop(context);
      }),
      padding: const EdgeInsets.only(left: 30),
    );
  }
}
