import 'package:flutter/material.dart';

// Back button navigation component, used to navigate back to the previous screen
class BackButtonNavigation extends StatelessWidget {
  const BackButtonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackButton(
      color: Colors.white,
      onPressed: (() {
        Navigator.pop(context);
      }),
    );
  }
}
