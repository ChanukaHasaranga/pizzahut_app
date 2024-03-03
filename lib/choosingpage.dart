import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pizzahut_app/dividertext.dart';
import 'package:pizzahut_app/searchbutton.dart';
import 'package:pizzahut_app/textfield.dart';

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 
                  Stack(
                 
                    children: [
                      Container(
                       height: containerHeight*0.45,
                      ),
                     Container(
                      height: containerHeight/4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                       color: const Color.fromARGB(255, 182, 39, 29)
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: containerHeight/8,
                              child: Padding(
                                padding:  EdgeInsets.only(top: containerHeight/19,left: 20,right: 20),
                                child: Center(
                                  child: TabBarView(
                                    children: [
                                     textfield1(txt: 'Enter your delivery Location', ),
                                     textfield1(txt: 'Enter your takeaway location',  )
                                    ]
                                    
                                    ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                top: containerHeight/50,
                                bottom: containerHeight/40,
                                left: 20,
                                right: 20
                              ),
                              child: searchbutton(),
                            )
                          ],
                        ),  
                       
                      )
                      
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: containerHeight/7,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 179, 179, 179),

                            borderRadius: BorderRadius.circular(13)
                          ),
                          height: containerHeight/20,
                          child: TabBar(
                            tabs: [
                              Text("Delivery",style: TextStyle(color: Colors.black,fontSize: fontSize/20),),
                              Text("Takeaway",style: TextStyle(color: Colors.black,fontSize: fontSize/20),)
                            ],
                             indicatorSize: TabBarIndicatorSize.tab, // Set indicator size to tab
                            indicator: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 255, 255),

                              
                            ),
                           
                            ),
                        )
                        
                        
                        ),
                          Positioned(
                    top: 10,
                    right: 5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: BeveledRectangleBorder()
                      ),
                      
                      onPressed:() {
                      
                    }, child:Text("Sign in/ Register",style: TextStyle(color: Colors.white,fontSize: fontSize/40))),
                  )
                 
                 
                    ]
                 
                  ),
                  dividertext(txt: 'Our Most Popular Deals',),
                  
                
                  ],
                 
                 
                 
                 ),
               ),
      
               )
            ),
      ),
    );
  }
}