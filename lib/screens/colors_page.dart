import 'package:flutter/material.dart';
import 'package:toku/Components/card.dart';

import '../models/lists.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = colorList;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Colors"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => CardItem(
              color: Color(0xFF7C3FA0),
              list: list[index],
              as: "colors",
            ),
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            itemCount: list.length));
  }
}
