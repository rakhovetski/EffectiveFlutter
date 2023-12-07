import 'package:flutter/material.dart';

class SelectBlock extends StatefulWidget {
  const SelectBlock({Key? key}) : super(key: key);

  @override
  _SelectBlockState createState() => _SelectBlockState();
}

class _SelectBlockState extends State<SelectBlock> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(bottom: 15),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 161, 161, 161),
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Text(
                    "Профиль",
                    style: TextStyle(
                      fontSize: 18.0,

                      decorationThickness: 2.0, // задаем толщину подчеркивания
                      color: _selectedIndex == 0 ? Colors.green : Colors.black,
                    ),
                  ),
                  onPressed: () => setState(() => _selectedIndex = 0),
                ),
                TextButton(
                  child: Text(
                    "Настройки",
                    style: TextStyle(
                      fontSize: 18.0,
                      decorationThickness: 2.0,
                      color: _selectedIndex == 1 ? Colors.green : Colors.black,
                    ),
                  ),
                  onPressed: () => setState(() => _selectedIndex = 1),
                ),
              ],
            ),
          ),
        ));
  }
}
