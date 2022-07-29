import 'package:flutter/material.dart';

// This is the main screen, containing the guest reservation list.
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Header component and back button navigation component
      appBar: AppBar(
        title: const Text('Guest List'),
      ),

      // TODO: ListView with item card component
      body: const Center(
        child: Text('Home Screen'),
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
