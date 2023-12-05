import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(children: [
          HeaderBlock(),
          SelectBlock(),
          MainBlock(
            title: "У вас подключено",
            subtitle:
                "Подписки, автоплатежи и сервисы на которые вы подписались",
          ),
          MainBlock(
              title: "Тарифы и лимиты",
              subtitle: "Для операций в Сбербанк Онлайн"),
          FunctionsForUser(),
          MainBlock(
              title: "Интересы",
              subtitle:
                  "Мы подбираем истории и предложения по темам, которые вам нравятся"),
          Footer()
        ]),
      ),
    );
  }
}

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
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("X"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  child: Image.asset(
                    "assets/images/funny_cat.jpg",
                    height: 150,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text("X"),
              )
            ],
          ),
          const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "Funny Cat",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ))
        ]));
  }
}

class SelectBlock extends StatelessWidget {
  const SelectBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
            child: Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                child: const Text(
                  "Профиль",
                  style: TextStyle(fontSize: 15.0),
                ),
                onPressed: () => {}),
            TextButton(
              child: const Text("Настройки",
                  style: TextStyle(
                    fontSize: 15.0,
                  )),
              onPressed: () => {},
            ),
          ],
        )));
  }
}

class MainBlock extends StatelessWidget {
  final String title;
  final String subtitle;

  MainBlock({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  '$title',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
                )),
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('$subtitle', style: TextStyle(fontSize: 15.0)))
          ],
        ));
  }
}

class FunctionsForUser extends StatelessWidget {
  Widget buildRow(String imagePath, String title, String subtitle) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: 40,
        ),
        Column(
          children: [Text(title), Text(subtitle)],
        ),
        TextButton(onPressed: () => {}, child: Text(">"))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRow("assets/images/funny_cat.jpg", "Изменить суточный платеж",
            "На платежи и переводы"),
        buildRow("assets/images/funny_cat.jpg", "Изменить суточный платеж",
            "На платежи и переводы"),
        buildRow("assets/images/funny_cat.jpg", "Изменить суточный платеж",
            "На платежи и переводы")
      ],
    );
  }
}

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  List<String> _tags = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука",
  ];
  List<String> _selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 10.0,
          children: _tags.map((tag) {
            return ChoiceChip(
              label: Text(tag),
              selected: _selectedTags.contains(tag),
              onSelected: (selected) {
                setState(() {
                  if (selected) {
                    _selectedTags.add(tag);
                  } else {
                    _selectedTags.remove(tag);
                  }
                });
              },
            );
          }).toList(),
        ),
        SizedBox(height: 16.0),
        Text('Выбранные теги: ${_selectedTags.join(', ')}'),
      ],
    );
  }
}
