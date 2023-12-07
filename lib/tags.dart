import 'package:flutter/material.dart';

class TagsWidget extends StatefulWidget {
  @override
  _TagsState createState() => _TagsState();
}

class _TagsState extends State<TagsWidget> {
  final List<String> _tags = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука",
  ];
  final List<String> _selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 5.0,
          children: _tags.map((tag) {
            return Padding(
                padding: const EdgeInsets.all(5),
                child: ChoiceChip(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  label: Text(
                    tag,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: const Color.fromARGB(255, 223, 223, 223),
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
                ));
          }).toList(),
        ),
        const SizedBox(height: 5.0),
        Text('Выбранные теги: ${_selectedTags.join(', ')}'),
      ],
    );
  }
}
