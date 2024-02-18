import 'package:flutter/material.dart';
import 'package:pizzahut_app/dividertext.dart';
import 'package:pizzahut_app/items.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
  double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
appBar: AppBar(
    automaticallyImplyLeading: false,

  backgroundColor: Colors.white,
  title: Container(
    height: containerHeight/25,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/logo.png"),fit: BoxFit.contain,alignment:Alignment.bottomLeft)
    ),
  ),
actions:<Widget> 
[
  
  IconButton(onPressed:() {
    
  }, icon:Icon(Icons.shopping_cart_outlined,color: Colors.black,size: fontSize/21,)),
  IconButton(onPressed:() {
    
  }, icon:Icon(Icons.person_outline,color: const Color.fromARGB(255, 134, 25, 17),size: fontSize/21,),),
  IconButton(onPressed:() {
    
  }, icon:Icon(Icons.menu,color: Colors.black,size: fontSize/21,))

],
),
body: SafeArea(
  
  child: SingleChildScrollView(
  child: Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/wallpaper.jpg"),fit: BoxFit.cover)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
       children: [
          
          Padding(
            padding:  EdgeInsets.only(right: fontSize/6,left: fontSize/6,top: containerHeight/60,bottom: containerHeight/60),
            child: ElevatedButton(onPressed:() {
              
            },
            
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(0, 255, 255, 255),
              foregroundColor:Colors.transparent,
              shape: BeveledRectangleBorder(),
              side: BorderSide(color: Color.fromARGB(255, 164, 164, 164)),
            ),
            
             child:Padding(
               padding:  EdgeInsets.only(top: containerHeight/70,bottom: containerHeight/70),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.bike_scooter,color: Colors.black,size: fontSize/25,),
                  Text("CHANGE DELIVERY DETAILS",style: TextStyle(color:const Color.fromARGB(255, 0, 0, 0),fontSize: fontSize/30),)
                           
                ],
               ),
             ) ),
          ),

          dividertext(txt: "LITE"),

          Container(
            height: containerHeight/2,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder:(context, index) {
                return items();


              },),
          ),
          SizedBox(height: containerHeight/40,),
            dividertext(txt: "CLASSIC"),

          Container(
            height: containerHeight/2,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder:(context, index) {
                return items();


              },),
          ),
          SizedBox(height: containerHeight/40,),
            dividertext(txt: "SIGNATURE"),

          Container(
            height: containerHeight/2,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder:(context, index) {
                return items();


              },),
          ),
          SizedBox(height: containerHeight/40,),
            dividertext(txt: "FAVOURITE"),

          Container(
            height: containerHeight/2,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder:(context, index) {
                return items();


              },),
          ),
          SizedBox(height: containerHeight/40,),
            dividertext(txt: "SUPREME"),

          Container(
            height: containerHeight/2,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder:(context, index) {
                return items();


              },),
          )

      
    
       ],
    ),
  ),
)),
    );
  }
}