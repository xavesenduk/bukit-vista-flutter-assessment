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
      body: Column(
        children: [
          // AppBar is placed inside body to avoid showing white line at the bottom of AppBar
          const Header(
            headerTitle: 'Guest List',
            headerHasBackButton: false,
          ),
          Container(
            color: const Color(0xFF3B9DF6),
            height: 90,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset("assets/icons/search.png"),
                          ),
                          const Expanded(
                            child: SizedBox(
                              height: 40,
                              child: TextField(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: 'Search your guest name',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF9C9DA7),
                                    fontFamily: 'Roboto',
                                    fontSize: 13,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xFFEFB83E),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/filter.png",
                      ),
                    ),
                  )
                ],
              ),
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
