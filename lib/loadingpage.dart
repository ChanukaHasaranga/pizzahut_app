import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pizzahut_app/choosingpage.dart';

class loadingpage extends StatefulWidget {
  const loadingpage({super.key});

  @override
  State<loadingpage> createState() => _loadingpageState();
}

class _loadingpageState extends State<loadingpage> {

int precent=0;

void initState(){
  super.initState();
  starttimer();
}
void starttimer(){
Timer.periodic(Duration(milliseconds: 50), (timer) { 
setState(() {
  if (precent<100) {
    
    precent++;


  }else{

timer.cancel();

Navigator.of(context).push(MaterialPageRoute(builder:(context) {
  return choosingpage();
},));


  }


});

}
);

}



  @override
  Widget build(BuildContext context) {
  double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;




    return  Scaffold(
       backgroundColor: Colors.white,
       body: SafeArea(
        child:WillPopScope(
          onWillPop: () async {
            // Disable back button
            return false;
          },
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                 height: containerHeight/5,
            ),
             Padding(
               padding: const EdgeInsets.only(right: 20,left: 20),
               child: Container(
                height: containerHeight/8,
                width:double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage("assets/logo.png"),fit:BoxFit.contain)
                  ),
               ),
             ),
             SizedBox(
              height: containerHeight/4,
             ),
             CircularProgressIndicator(
             valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 220, 18, 18)),
             strokeWidth: 3.0,
                                       ),


             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Loading  ",style: TextStyle(color: Colors.black,fontSize: fontSize/30,fontWeight: FontWeight.w500)),
                   Text("$precent"+"%",style: TextStyle(color: Colors.red,fontSize:fontSize/30 ),)
                 ],
               ),
             )                          
          
          
          
          ],


        )
        
        
        
        ),


       )
    );
  }
}