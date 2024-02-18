import 'package:flutter/material.dart';
import 'package:pizzahut_app/items.dart';

class listitem extends StatefulWidget {

  const listitem({super.key});

  @override
  State<listitem> createState() => _listitemState();
}

class _listitemState extends State<listitem> {
  @override
  Widget build(BuildContext context) {
     double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;

    return    Container(
            height: containerHeight/2,
              child: ListView.builder(
                
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder:(context, index) {
                return items();


              },),
          );

  }
}