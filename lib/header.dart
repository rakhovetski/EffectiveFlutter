import 'package:flutter/material.dart';

class HeaderBlock extends StatelessWidget {
  const HeaderBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(children: [
          Row(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextButton(
                  onPressed: () => {},
                  child: Image.asset(
                    "assets/images/arrow-outside.png",
                    height: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  child: Image.asset(
                    "assets/images/funny_cat.jpg",
                    height: 150,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () => {},
                    child: Image.asset(
                      "assets/images/x-mark.png",
                      height: 30,
                    ),
                  ))
            ],
          ),
          const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Center(
                child: Text(
                  "Funny Cat",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ))
        ]));
  }
}
