import 'package:flutter/material.dart';

class NavigationBarComponent extends StatelessWidget {
  const NavigationBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        elevation: 0,
        fixedColor: const Color(0xFF3B9DF6),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home.png"), label: "1"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/wallet.png"), label: "2"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/notification.png"), label: "3"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/person.png"), label: "4"),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
