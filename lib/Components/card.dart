

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class CardItem extends StatelessWidget {
  CardItem(
      {super.key,
      required this.color,
      required this.list,
      required this.as,
      });

  Color color;
  Item list;
  String as;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: color,
      child: ListTile(
        textColor: Colors.white,
        leading: Container(
            color: Colors.white,
            child: Image(
              image: AssetImage( list.image),
              fit: BoxFit.fill,
            )),
        title:  Text(
          list.jpName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text(
          list.enName,
          style:const  TextStyle(fontSize: 18),
        ),
        trailing: IconButton(
          onPressed: (){

            AudioCache player = AudioCache(prefix:"assets/sounds/${as}/");
            player.play( list.sound);


          },
          icon:const  Icon(
            Icons.play_arrow,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
