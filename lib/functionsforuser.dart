import 'package:flutter/material.dart';

class FunctionsForUser extends StatelessWidget {
  Widget buildRow(String imagePath, String title, String subtitle) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  imagePath,
                  height: 60,
                )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 18),
                  )
                ],
              ),
            ),
            TextButton(
                onPressed: () => {},
                child: const Text(
                  ">",
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: buildRow("assets/images/clock.png",
                    "Изменить суточный лимит", "На платежи и переводы"))),
        Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: buildRow(
                    "assets/images/percent.png",
                    "Переводы без комиссии",
                    "Показать остаток в этом месяце"))),
        buildRow("assets/images/rightarrow.png",
            "Информация о тарифах и лимитах", "")
      ],
    );
  }
}
