import 'package:flutter/material.dart';

class endingpage extends StatefulWidget {
  const endingpage({super.key});

  @override
  State<endingpage> createState() => _endingpageState();
}

class _endingpageState extends State<endingpage> {
  @override
  Widget build(BuildContext context) {
      double fontSize = MediaQuery.of(context).size.width;

    return Scaffold(
backgroundColor: Colors.white,
body: Center(


child: Text("Order Completed",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:fontSize/15 ),),





),
    );
  }
}