
import 'package:flutter/material.dart';


class Category extends StatelessWidget{

  Category({super.key, required this.color,required this.text,required this.widget});
  Color? color ;
  String? text;
  Widget widget;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> widget ));
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding:const  EdgeInsets.only(left: 20),
        height: MediaQuery.of(context).size.height*0.09,
        color: color,
        child:  Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }
}