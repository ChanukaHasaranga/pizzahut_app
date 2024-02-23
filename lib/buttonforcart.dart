import 'package:flutter/material.dart';

class pricegetting extends StatefulWidget {
  String txt;
  String value;
   pricegetting({
    
    required this.txt,
    required this.value,
    
    super.key});

  @override
  State<pricegetting> createState() => _pricegettingState();
}

class _pricegettingState extends State<pricegetting> {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
    return Container(
         color: Colors.white,
         child: Column(
          children: [
            Container(
                    width: double.infinity,
                    child: Divider(
                      color: Color.fromARGB(66, 0, 0, 0),
                    height: containerHeight/25,
                     thickness: containerHeight/400,
                     indent: 3,
                     endIndent: 2,
                    
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(widget.txt,style: TextStyle(color: const Color.fromARGB(107, 0, 0, 0),fontSize: fontSize/25),),
                      Text(widget.value,style: TextStyle(color: const Color.fromARGB(107, 0, 0, 0),fontSize: fontSize/25),),


                    ],
                  )

          ],
         ),
    );
  }
}