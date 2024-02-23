import 'package:flutter/material.dart';
import 'package:pizzahut_app/cartmodel.dart';
import 'package:pizzahut_app/dividertext.dart';
import 'package:pizzahut_app/items.dart';
import 'package:pizzahut_app/list.dart';
import 'package:provider/provider.dart';

class menu extends StatefulWidget {

   menu({super.key});

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
  
  child: DefaultTabController(
    
    length: 4,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
    child: Consumer<CartModel>(
      builder:(context, value, child) => 
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/wallpaper.jpg"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
      
            Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 42, 42, 42),
      
                              borderRadius: BorderRadius.circular(0)
                            ),
                            height: containerHeight/18,
                            child: TabBar(
                              tabs: [
                                
                                Text("PRAMOS",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: fontSize/30),),
                                Text("PIZZA",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: fontSize/30),),
                                Text("MELTS",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: fontSize/30),),
                                Text("APPETIZERS & OTHERS",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: fontSize/35),)
      
      
                              ],
                               indicatorSize: TabBarIndicatorSize.tab, // Set indicator size to tab
                              indicator: BoxDecoration(
                                
                                color: Color.fromARGB(255, 157, 5, 5),
      
                                
                              ),
                             
                              ),
                          ),
              
              Padding(
                padding:  EdgeInsets.only(right: fontSize/6,left: fontSize/6,top: containerHeight/60,bottom: containerHeight/60),
                child: ElevatedButton(onPressed:() {
                  print(value.csrtitems);
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
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
      
              Container(
                height: containerHeight*2,
                child: TabBarView(children: [
                  dividertext(txt: "LITE"),
      
                   SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                     child: Column(
                      children: [
                                   
                        dividertext(txt: "LITE"),
                      
                         listitem(),
                                   SizedBox(height: containerHeight/40,),
                                     dividertext(txt: "CLASSIC"),
                      
                             listitem(),
                                   SizedBox(height: containerHeight/40,),
                                     dividertext(txt: "SIGNATURE"),
                      
                            listitem(),
                                   SizedBox(height: containerHeight/40,),
                                     dividertext(txt: "FAVOURITE"),
                      listitem(),
                                   SizedBox(height: containerHeight/40,),
                                     dividertext(txt: "SUPREME"),
                      
                         listitem()
                      
                          
                                   
                                   
                      ],
                     ),
                   ),
                
                      dividertext(txt: "LITE"),
                      dividertext(txt: "LITE"),
                
                
                
                
                ]
                ),
              ),
      
      
              
        
           ],
        ),
      ),
    ),
    ),
  )),
    );
  }
}