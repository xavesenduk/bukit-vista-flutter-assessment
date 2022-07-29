import 'package:flutter/material.dart';

// Details screen, shows the guest detail as selected on the home screen.
// Can use multiple parameters to understand which guest to show?
class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Header component and back button navigation component
      appBar: AppBar(
        title: const Text('Details'),
      ),

      // TODO: Guest data card and tabs component
      body: const Center(
        child: Text('Details Screen'),
      ),

      // TODO: Navigation bar component
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
