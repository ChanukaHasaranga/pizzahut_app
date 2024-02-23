import 'package:flutter/material.dart';
import 'package:pizzahut_app/cartmodel.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
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
  
  child: Consumer<CartModel>(
    
    builder:(context, value, child) =>SingleChildScrollView(
      child: Container(
              decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/wallpaper.jpg"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: containerHeight/60,left: containerHeight/90,right: containerHeight/90),
          child: Container(
            width: double.infinity,
            color: Colors.white,
        
            child: Padding(
          padding:  EdgeInsets.only(top: containerHeight/40,left: containerHeight/40,right: containerHeight/60),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children:[
              
                  Text("Your basket",style: TextStyle(color: Colors.black,fontSize: fontSize/13,fontWeight: FontWeight.bold),),
                  Container(
                    width: double.infinity,
                    child: Divider(
                      color: Color.fromARGB(79, 0, 0, 0),
                    height: containerHeight/25,
                     thickness: containerHeight/300,
                     indent: 3,
                     endIndent: 2,
                    
                    ),
                  ),
                
                 Container(
                height: containerHeight/3.7,
                       color: Colors.white,
                   child: ListView.builder(
                    itemCount: value.csrtitems.length,
                    itemBuilder:(context, index) {
                    return ListTile(
                     
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(value.csrtitems[index][index][0],style: TextStyle(color: Colors.black,fontSize: fontSize/23),),
                            Text("Rs.${value.csrtitems[index][index][1].toString()}",style: TextStyle(color: const Color.fromARGB(195, 0, 0, 0),fontSize: fontSize/26),),
                          Container(
                            color: Colors.white,
                            height: containerHeight / 20,
                            child: ListView.builder(
                                 itemCount: value.csrtitems[index][index][2].length,
                                 itemBuilder: (context, subIndex) {
                    return Container(
                          color: Colors.white,
                          height: containerHeight / 20, 
                          child: Text(
                            " + Add ${value.csrtitems[index][index][2][subIndex]} (Rs.${value.csrtitems[index][index][3][subIndex]})",
                            
                            
                            style: TextStyle(color: const Color.fromARGB(131, 0, 0, 0),fontSize: fontSize/22),
                          ),
                    );
                                 },
                            ),
                          )
                          
                          ],
                        ),
                        
                     
                          
                          
                          
                    );
                     
                          
                          
                                 },),
                 ),
                ]
              ),
            ),
        
          )
        )
      )
    ),
  )
)
    );
  }
}