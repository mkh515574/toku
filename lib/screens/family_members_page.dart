import 'package:flutter/material.dart';
import 'package:toku/models/lists.dart';

import '../Components/card.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = familyMembers;
    return Scaffold(
        appBar: AppBar(
          title: const Text("FamilyMembers"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => CardItem(
              color: Color(0xFF527F30),
              list: list[index],
              as: "family_members",
            ),
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            itemCount: list.length));

  }
}
