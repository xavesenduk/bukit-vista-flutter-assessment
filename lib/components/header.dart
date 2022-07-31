import 'dart:ui';

import 'package:bukit_vista_flutter_assessment/components/back_button_navigation.dart';
import 'package:flutter/material.dart';

// Header component, used at the top of each screen
class Header extends StatelessWidget implements PreferredSizeWidget {
  final String headerTitle;
  final bool headerHasBackButton;
  const Header(
      {Key? key, required this.headerTitle, required this.headerHasBackButton})
      : super(key: key);

  // Implementing PreferredSizeWidget to set the height of the header
  @override
  Size get preferredSize => const Size.fromHeight(70);

  // Build the header using Flutter AppBar, passing arguments to customize
  // the title, and if the back button should be shown
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF3B9DF6),
      centerTitle: true,
      elevation: 0,
      leading:
          headerHasBackButton ? const BackButtonNavigation() : const SizedBox(),
      title: Text(
        headerTitle,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    );
  }
}
