import 'package:flutter/material.dart';

class searchbutton extends StatelessWidget {
  const searchbutton({super.key});

  @override
  Widget build(BuildContext context) {
      double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
    return Container(
     height: containerHeight/15,
     decoration: BoxDecoration(
      color:const Color.fromARGB(255, 42, 102, 44)
     ),
     child: Center(
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search,color: Colors.white,size: fontSize/21,),
          Text("Search",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize:fontSize/21 ),)
        ],
       ),
     )

    );
  }
}