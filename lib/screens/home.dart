import 'package:flutter/material.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers.dart';
import 'package:toku/screens/phrases.dart';

import '../Components/category_item.dart';
import 'colors_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = const [
      Color(0xFFF8942F),
      Color(0xFF527F30),
      Color(0xFF7C3FA0),
      Color(0xFF46A4C9)
    ];
    List nameScreen = [
      "Numbers",
      "Family Members",
      "Colors",
      "Phrases"];
    List screens = const [
      Numbers(),
      FamilyMembersPage(),
      ColorPage(),
      PhrasesPage(),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Toku"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Category(
            color: colors[index],
            text: nameScreen[index],
            widget: screens[index],
          ),
          itemCount: nameScreen.length,
        ));
  }
}
