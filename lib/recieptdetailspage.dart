import 'package:flutter/material.dart';
import 'package:pizzahut_app/cart.dart';
import 'package:pizzahut_app/location.dart';
import 'package:provider/provider.dart';

class recipient extends StatefulWidget {
  const recipient({super.key});

  @override
  State<recipient> createState() => _recipientState();
}

class _recipientState extends State<recipient> {
  @override
  Widget build(BuildContext context) {
      double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
  String addrress= Provider.of<LocationProvider>(context).address;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
  
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

    Navigator.of(context).push(MaterialPageRoute(builder:(context) => cart(),));
    
  }, icon:Icon(Icons.person_outline,color: const Color.fromARGB(255, 134, 25, 17),size: fontSize/21,),),
  IconButton(onPressed:() {
    
  }, icon:Icon(Icons.menu,color: Colors.black,size: fontSize/21,))

],
),
body:SafeArea(child: WillPopScope(
  onWillPop: () async{
    return false;
  },
  child: SingleChildScrollView(
  
    child: Container(
                  decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/wallpaper.jpg"),fit: BoxFit.cover)
        ),
  
  child: Padding(
        padding:  EdgeInsets.only(top: containerHeight/30,left: containerHeight/120,right: containerHeight/120),
    child: Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      
      Padding(
        padding:  EdgeInsets.only(top: containerHeight/60,left: containerHeight/60,right: containerHeight/60),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(101, 0, 0, 0),width: 1)
          ),
          child: Padding(
        padding:  EdgeInsets.only(top: containerHeight/40,left: containerHeight/60,right: containerHeight/60,bottom: containerHeight/40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
            
                    Icon(Icons.coffee,color: const Color.fromARGB(84, 0, 0, 0),size: fontSize/25,),
                    SizedBox(width: 10,),
                    Container(
                      width: fontSize/1.6,
                      child: Text("Delivering To : $addrress",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w300,fontSize: fontSize/30),))
            
                  ],
                ),
                Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromARGB(46, 0, 0, 0),
                          height: containerHeight/25,
                           thickness: containerHeight/400,
                           indent: 3,
                           endIndent: 2,
                          
                          ),
                                         ),
                                           Row(
                  children: [
  
                    Icon(Icons.watch,color: const Color.fromARGB(84, 0, 0, 0),size: fontSize/25,),
                    SizedBox(width: 10,),
                    Text("Order For : 2024-02-29, ASAP",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w300,fontSize: fontSize/30),)
            
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding:  EdgeInsets.only(top: containerHeight/60,left: containerHeight/60,right: containerHeight/60),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(101, 0, 0, 0),width: 1)
          ),
          child: Padding(
        padding:  EdgeInsets.only(top: containerHeight/40,left: containerHeight/60,right: containerHeight/60),
            child: Column(
       children: [
        Center(child: Text("RECIPIENT DETAILS",style: TextStyle(color: Colors.black,fontSize: fontSize/20,fontWeight: FontWeight.bold),)),
 Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromARGB(46, 0, 0, 0),
                          height: containerHeight/25,
                           thickness: containerHeight/400,
                           indent: 3,
                           endIndent: 2,
                          
                          ),
                                         ),
      
      
        ],
            )
          )
        )
      )
        ]
      )
    )
  ),
  
  
  
    ),
  
  
  
  
  ),
)),







    );
  }
}