import 'package:bukit_vista_flutter_assessment/components/back_button_navigation.dart';
import 'package:flutter/material.dart';

// Header component, used at the top of each screen
class Header extends StatelessWidget implements PreferredSizeWidget {
  final String headerTitle;
  const Header({Key? key, required this.headerTitle}) : super(key: key);

  // Implementing PreferredSizeWidget to set the height of the header
  @override
  Size get preferredSize => const Size.fromHeight(50);

  // Build the header using Flutter AppBar, passing arguments to customize
  // the title, and if the back button should be shown
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        headerTitle,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      leading: const BackButtonNavigation(),
    );
  }
}
