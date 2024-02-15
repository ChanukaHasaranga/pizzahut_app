import 'dart:ui';

import 'package:flutter/material.dart';

class choosingpage extends StatefulWidget {
  
  const choosingpage({super.key});

  @override
  State<choosingpage> createState() => _choosingpageState();
}

class _choosingpageState extends State<choosingpage> {
  @override
  Widget build(BuildContext context) {
  double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: WillPopScope(
              //not go to the previous page
               onWillPop:() async{
                 return false;
               },
               child: SingleChildScrollView(
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 
                  Stack(
                 
                    children: [
                      Container(
                       height: containerHeight*0.7,
                      ),
                     Container(
                      height: containerHeight/4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                       gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:[
                         const Color.fromARGB(255, 141, 21, 13),
                         const Color.fromARGB(255, 141, 21, 13)
                        ]
                        )
                      ),
                     ),
                     Positioned(
                      top: containerHeight/50,
                      left: 50,
                      right: 50,
                       child: Container(
                        height: containerHeight/8,
                        decoration:BoxDecoration(
                          image: DecorationImage(image:AssetImage("assets/pizzahutlogo1.png"),fit: BoxFit.contain)
                        ),
                       ),
                     ),
                     Positioned(
                      left: 20,
                      right: 20,
                      top:  containerHeight/7,
                      child: Container(
                        height: containerHeight/4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                        boxShadow:[BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            blurRadius: 10
                        )]
                 
                      ),
                   
                       
                      )
                      
                      )
                 
                    ],
                 
                  )
                 
                 
                  ],
                 
                 
                 
                 ),
               ),
      
               )
            ),
      ),
    );
  }
}