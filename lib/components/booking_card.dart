import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final String bookingId,
      bookingLocation,
      bookingStatus,
      bookingCheckInTime,
      bookingCheckOutTime,
      bookingCheckInDate,
      bookingCheckOutDate,
      bookingGuests,
      bookingValue,
      bookingPhone,
      bookingHost,
      bookingProfile,
      bookingProperty,
      bookingListing,
      bookingNights;
  const BookingCard(
      {Key? key,
      required this.bookingId,
      required this.bookingLocation,
      required this.bookingStatus,
      required this.bookingCheckInTime,
      required this.bookingCheckOutTime,
      required this.bookingCheckInDate,
      required this.bookingCheckOutDate,
      required this.bookingGuests,
      required this.bookingValue,
      required this.bookingPhone,
      required this.bookingHost,
      required this.bookingProfile,
      required this.bookingProperty,
      required this.bookingListing,
      required this.bookingNights})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (context) {
                    return MakeDismissable(
                        context: context,
                        child: DraggableScrollableSheet(
                          initialChildSize: 0.8,
                          minChildSize: 0.3,
                          maxChildSize: 0.8,
                          builder: (context, controller) {
                            return Container(
                              height: screen.height * .65,
                              decoration: const BoxDecoration(
                                  // color: isDarkMode ? itam2 : Colors.white,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  )),
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 24, bottom: 20),
                                            child: Image.asset(
                                                "assets/icons/line.png"),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Check in",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingCheckInTime,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 14,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingCheckInDate,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 2),
                                                  child: Image.asset(
                                                      "assets/icons/night.png"),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingNights,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF1076BC),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Check out",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingCheckOutTime,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 14,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingCheckOutDate,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Booking ID",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingId,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Booking status",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingStatus,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Number of guest",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingGuests,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Booking value",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingValue,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Phone number",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingPhone,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 30),
                                        const Text(
                                          "Hosting details",
                                          style: TextStyle(
                                              color: Color(0xFF515C6F),
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(height: 30),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Host",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingHost,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Profile name",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingProfile,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Property Unit",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingProperty,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF515C6F),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2),
                                                  child: Text(
                                                    "Listing name",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF999A99),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    bookingListing,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFFF69322),
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ));
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 3,
                      spreadRadius: 1,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset("assets/icons/location.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bookingId,
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 17),
                              Text(
                                bookingLocation,
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "$bookingCheckInTime - $bookingCheckOutTime",
                                style: const TextStyle(
                                  color: Color(0xFF9C9DA7),
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    bookingStatus == "Confirmed"
                        ? Stack(
                            fit: StackFit.passthrough,
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/icons/status-green.png"),
                              const Text(
                                "Confirmed",
                                style: TextStyle(
                                  color: Color(0xFF2ECC2C),
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        : Stack(
                            fit: StackFit.passthrough,
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/icons/status-red.png"),
                              const Text(
                                "Canceled",
                                style: TextStyle(
                                  color: Color(0xFFFF0000),
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class MakeDismissable extends StatelessWidget {
  final BuildContext context;
  final Widget child;
  const MakeDismissable({Key? key, required this.context, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pop(context);
      },
      child: child,
    );
  }
}
