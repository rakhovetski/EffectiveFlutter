import 'package:flutter/material.dart';

class TitleDescriptionBlock extends StatelessWidget {
  final String title;
  final String subtitle;

  TitleDescriptionBlock({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 30),
        child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
                Text(subtitle,
                    style: const TextStyle(
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 161, 161, 161)))
              ],
            )));
  }
}
