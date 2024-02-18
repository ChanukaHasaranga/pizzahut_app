import 'package:flutter/material.dart';

class dividertext extends StatelessWidget {
  String txt;

   dividertext({
    
    required this.txt,
    super.key});

  @override
  Widget build(BuildContext context) {
      double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
    return  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        
           Container(
                 width: MediaQuery.of(context).size.width/5,
                 child: Divider(
                   color: Colors.black,
                   height: containerHeight/25,
                   thickness: containerHeight/300,
                   indent: 3,
                   endIndent: 2,
                 ),
           ),
                         Container(
                          
                          child: Center(child: Text(txt,style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize:fontSize/20),),),),
                           Center(
                             child: Container(
                                   width: MediaQuery.of(context).size.width/5,
                                   child: Divider(
                                     color: Colors.black,
                                     height: containerHeight/25,
                                     thickness: containerHeight/300,
                                     indent: 3,
                                     endIndent: 2,
                                   ),
                             ),
                           )
                    ],
                  );
  }
}