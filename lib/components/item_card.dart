import 'package:flutter/material.dart';

// Item card component, to display guest information in a list view.
class ItemCard extends StatelessWidget {
  final String guestName, guestPicture, guestOrigin;
  const ItemCard(
      {Key? key,
      required this.guestName,
      required this.guestPicture,
      required this.guestOrigin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4.5),
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {},
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
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Just checking if the guest picture is not empty
                        // if empty, use white color to avoid error
                        guestPicture == ''
                            ? const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                              )
                            : CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(guestPicture),
                              ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              guestName,
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              guestOrigin,
                              style: const TextStyle(
                                color: Color(0xFF9C9DA7),
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF359BE5),
                          size: 18,
                        ))
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
