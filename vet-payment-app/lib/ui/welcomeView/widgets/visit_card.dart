import 'package:flutter/material.dart';
import 'package:app/global/constants.dart';

class VisitCard extends StatelessWidget {
  const VisitCard(
      {super.key,
      required this.color,
      required this.locationText,
      required this.procedureText,
      required this.amountDue,
      required this.paid,
      required this.imageURL,
      required this.onPressed});

  final Color color;
  final String locationText;
  final String procedureText;
  final String amountDue;
  final bool paid;
  final String imageURL;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        color: cardBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(imageURL),
              ),
            ),
            Column(
              children: [
                Text(locationText,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text(procedureText,
                    style: const TextStyle(fontSize: 10, color: Colors.white)),
              ],
            ),
            paid
                ? Expanded(
                    child: Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.green[500],
                      child: Column(
                        children: [
                          Card(
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.green[600],
                            child: Text(amountDue,
                                style: const TextStyle(
                                    fontSize: 35, color: Colors.white)),
                          ),
                          TextButton(
                            onPressed: () => onPressed(),
                            child: const Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.orange,
                      child: Column(
                        children: [
                          Card(
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.orangeAccent,
                            child: Text(amountDue,
                                style: const TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          TextButton(
                            onPressed: () => onPressed(),
                            child: const Text(
                              "Pay",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
          ],
        ));
  }
}
