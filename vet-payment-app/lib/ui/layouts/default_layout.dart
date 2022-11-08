import 'package:flutter/material.dart';
import 'package:app/global/constants.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: const NetworkImage(
                      "https://media.istockphoto.com/photos/closeup-hide-black-labrador-dog-looking-up-giving-you-whale-eye-on-picture-id1278293124?k=20&m=1278293124&s=612x612&w=0&h=vKN-oSyb5Q3uLWe-pvr3u8FL-tiBkz8kZpDRiRqGQ_w="),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [child],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
