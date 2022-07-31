import 'package:bukit_vista_flutter_assessment/components/header.dart';
import 'package:bukit_vista_flutter_assessment/components/item_card.dart';
import 'package:bukit_vista_flutter_assessment/components/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

// This is the main screen, containing the guest reservation list.
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List items = [];

  // Fetch data from the json (dummy data)
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/guests.json');
    final data = await json.decode(response);
    setState(() {
      items = data["items"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: ListView with item card component
      body: Column(
        children: [
          // AppBar is placed inside body to avoid showing white line at the bottom of AppBar
          const Header(
            headerTitle: 'Guest List',
            headerHasBackButton: false,
          ),
          // TODO: Home Screen search bar
          Container(
            color: const Color(0xFF3B9DF6),
            height: 80,
            child: Row(
              children: [],
            ),
          ),
          items.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                  padding: const EdgeInsets.only(top: 30),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      showDetailsButton: true,
                      guestName: items[index]["name"],
                      guestPicture: items[index]["photo"],
                      guestOrigin: items[index]["origin"],
                      guestDetails: items[index]["bookings"] ?? [],
                      guestId: items[index]["id"],
                    );
                  },
                ))
              : const SizedBox(),
        ],
      ),

      bottomNavigationBar: const NavigationBarComponent(),
    );
  }
}
