import 'package:flutter/material.dart';
import 'package:toku/Components/card.dart';

import '../models/lists.dart';

class Numbers extends StatelessWidget {
  const Numbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List num = numbers;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => CardItem(
                  color: Colors.orange,
                  list: num[index],
                  as: "numbers",
                ),
            separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
            itemCount: num.length));
  }
}
