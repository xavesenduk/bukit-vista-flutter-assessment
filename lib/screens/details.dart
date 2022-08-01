import 'dart:convert';

import 'package:bukit_vista_flutter_assessment/components/booking_card.dart';
import 'package:bukit_vista_flutter_assessment/components/header.dart';
import 'package:bukit_vista_flutter_assessment/components/item_card.dart';
import 'package:bukit_vista_flutter_assessment/components/navigation_bar.dart';
import 'package:bukit_vista_flutter_assessment/components/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Details screen, shows the guest detail as selected on the home screen.
// Can use multiple parameters to understand which guest to show?
class Details extends StatefulWidget {
  final String guestName,
      guestPicture,
      guestSince,
      guestEmail,
      guestPhone,
      guestOrigin;
  const Details(
      {Key? key,
      required this.guestName,
      required this.guestPicture,
      required this.guestSince,
      required this.guestEmail,
      required this.guestPhone,
      required this.guestOrigin})
      : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List items = [];

  // Fetch data from the json (dummy data)
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/booking_details.json');
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const Header(
          headerTitle: "Guest Details",
          headerHasBackButton: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 5),
              child: ItemCard(
                guestName: widget.guestName,
                guestPicture: widget.guestPicture,
                guestOrigin: widget.guestSince,
                guestDetails: const [],
                guestId: widget.guestName,
                showDetailsButton: false,
                guestSince: widget.guestSince,
                guestEmail: widget.guestEmail,
                guestPhone: widget.guestPhone,
              ),
            ),
            Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0xFFC4C4C4), width: 2))),
                ),
                const TabBar(
                  tabs: [
                    Tabs(tabTitle: "Overview"),
                    Tabs(tabTitle: "Bookings"),
                    Tabs(tabTitle: "Personas"),
                  ],
                  indicatorColor: Color(0xFF1076BC),
                  labelColor: Color(0xFF1076BC),
                  unselectedLabelColor: Color(0xFFC4C4C4),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: Color(0xFF999A99),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          widget.guestEmail,
                          style: const TextStyle(
                              color: Color(0xFF515C6F),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                              color: Color(0xFF999A99),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          widget.guestPhone,
                          style: const TextStyle(
                              color: Color(0xFF515C6F),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "Guest Origin",
                          style: TextStyle(
                              color: Color(0xFF999A99),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          widget.guestOrigin,
                          style: const TextStyle(
                              color: Color(0xFF515C6F),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  padding: const EdgeInsets.only(top: 30),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return BookingCard(
                      bookingId: items[index]['bookingId'],
                      bookingLocation: items[index]['bookingLocation'],
                      bookingStatus: items[index]['bookingStatus'],
                      bookingCheckInTime: items[index]['bookingCheckInTime'],
                      bookingCheckOutTime: items[index]['bookingCheckOutTime'],
                      bookingCheckInDate: items[index]['bookingCheckInDate'],
                      bookingCheckOutDate: items[index]['bookingCheckOutDate'],
                      bookingGuests: items[index]['bookingGuests'],
                      bookingValue: items[index]['bookingValue'],
                      bookingPhone: items[index]['bookingPhone'],
                      bookingHost: items[index]['bookingHost'],
                      bookingProfile: items[index]['bookingProfile'],
                      bookingProperty: items[index]['bookingProperty'],
                      bookingListing: items[index]['bookingListing'],
                      bookingNights: items[index]['bookingNights'],
                    );
                  },
                ),
                // SizedBox because there is no design for the "Personas" tab
                const SizedBox(),
              ]),
            )
          ],
        ),
        bottomNavigationBar: const NavigationBarComponent(),
      ),
    );
  }
}
