import 'package:flutter/material.dart';
import 'package:toku/models/lists.dart';

import '../Components/pcard.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = phrases;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phrases"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => pCardItem(
              color: Color(0xFF527F30),
              list: list[index],

              as: "phrases",
            ),
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            itemCount: list.length));

  }
}
