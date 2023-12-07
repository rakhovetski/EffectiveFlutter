import 'package:effective_project/functionsforuser.dart';
import 'package:effective_project/header.dart';
import 'package:effective_project/select.dart';
import 'package:effective_project/tags.dart';
import 'package:effective_project/titledescription.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: SingleChildScrollView(
        child: Column(children: [
          const HeaderBlock(),
          const SelectBlock(),
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(children: [
                TitleDescriptionBlock(
                  title: "У вас подключено",
                  subtitle:
                      "Подписки, автоплатежи и сервисы на которые вы подписались",
                ),
                TitleDescriptionBlock(
                    title: "Тарифы и лимиты",
                    subtitle: "Для операций в Сбербанк Онлайн"),
                FunctionsForUser(),
                TitleDescriptionBlock(
                    title: "Интересы",
                    subtitle:
                        "Мы подбираем истории и предложения по темам, которые вам нравятся"),
                TagsWidget()
              ]))
        ]),
      ),
    ));
  }
}
