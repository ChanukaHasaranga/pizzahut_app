import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pizzahut_app/buttonforcart.dart';
import 'package:pizzahut_app/cartmodel.dart';
import 'package:pizzahut_app/choosingpage.dart';
import 'package:pizzahut_app/custermusiingpage.dart';
import 'package:pizzahut_app/items.dart';
import 'package:pizzahut_app/location.dart';
import 'package:pizzahut_app/menu.dart';
import 'package:pizzahut_app/textfield.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

 
class _cartState extends State<cart> {

 void dispose() {
    super.dispose();
  }

  double servicechargenew=0;
      String bandara='';

  @override
  Widget build(BuildContext context) {
        String addressshow = Provider.of<LocationProvider>(context).address;

    double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
        String Addressnew='';

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
  
  child: WillPopScope(

    onWillPop: () async{
      return false;
    },
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
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
              ),
          
              child: Padding(
            padding:  EdgeInsets.only(top: containerHeight/40,left: containerHeight/40,right: containerHeight/60),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                
                    Text("Your basket",style: TextStyle(color: Colors.black,fontSize: fontSize/13,fontWeight: FontWeight.bold),),
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
                  
                   Container(
                  height: containerHeight/5,
                         color: Colors.white,
                     child: ListView.builder(
                      itemCount: value.csrtitems.length,
                      itemBuilder:(context, index) {
                      return Column(
                        children: [
                          ListTile(
                              trailing: IconButton(onPressed:() {
                                             Provider.of<CartModel>(context, listen: false)
                                              .removeitemfromcart(index);
                                
                              }, icon:Icon(Icons.delete,color: Colors.black,size: fontSize/24,)),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(value.csrtitems[index][0][0],style: TextStyle(color: Colors.black,fontSize: fontSize/23),),
                                  Text("Rs.${value.csrtitems[index][0][1].toString()}",style: TextStyle(color: const Color.fromARGB(195, 0, 0, 0),fontSize: fontSize/26),),
                                Container(
                                  color: Colors.white,
                                  height: containerHeight / 20,
                                  child: ListView.builder(
                                       itemCount: value.csrtitems[index][0][2].length,
                                       itemBuilder: (context, subIndex) {
                                        print("value${value.csrtitems}");
                                        print(index);
                                        servicecharge(double.parse(value.calculation()));
    
    
                          return Container(
                                color: Colors.white,
                                height: containerHeight / 20, 
                                child: Text(
                                  " + Add ${value.csrtitems[index][0][2][subIndex]} (Rs.${value.csrtitems[index][0][3][subIndex]})",
                                  
                                  
                                  style: TextStyle(color: const Color.fromARGB(131, 0, 0, 0),fontSize: fontSize/25),
                                ),
                          );
                                       },
                                  ),
                                ),
                                
                                
                                ],
                              ),
                              
                           
                                
                                
                                
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
                                     )
                        ],
                      );
                       
                            
                            
                                   },),
                   ),
                   Padding(
            padding:  EdgeInsets.only(left: containerHeight/200,right: containerHeight/200,top: containerHeight/40),
                     child: ElevatedButton(onPressed:() {
                      print(value.csrtitems.length,);
      Navigator.of(context).push(MaterialPageRoute(builder:(context) {
    
        return menu();
      },));
                     }, child: Padding(
            padding:  EdgeInsets.only(top: containerHeight/60,bottom: containerHeight/60),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Icon(Icons.arrow_back,color: Colors.white,size: fontSize/20,),
                           Text("Continue shopping",style: TextStyle(color: Colors.white,fontSize: fontSize/22),)
                             
                        ],
                       ),
                     ),
                     style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                      shape: BeveledRectangleBorder(),
                     
                     ),
                     
                     ),
                   ),
                   Padding(
        padding:  EdgeInsets.only(top: containerHeight/60,),
    
                     child: Text("Order Summary",style: TextStyle(color: Colors.black,fontSize: fontSize/13,fontWeight: FontWeight.bold),),
                   ),
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
                     Padding(
            padding:  EdgeInsets.only(left: containerHeight/200,right: containerHeight/200,top: containerHeight/120),
                     child: ElevatedButton(onPressed:() {
     
                     }, child: Padding(
            padding:  EdgeInsets.only(top: containerHeight/60,bottom: containerHeight/60),
                       child: Center(child: Text("Enter your coupon code",style: TextStyle(color: Colors.white,fontSize: fontSize/22),)),
                     ),
                     style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 16, 87, 18),
                          foregroundColor: Colors.black,
                      shape: BeveledRectangleBorder(),
                     
                     ),
                     
                     ),
                   ),
       Padding(
            padding:  EdgeInsets.only(left: containerHeight/200,right: containerHeight/200,top: containerHeight/120),
                     child: ElevatedButton(onPressed:() {
     
                     }, child: Padding(
            padding:  EdgeInsets.only(top: containerHeight/60,bottom: containerHeight/60),
                       child: Center(child: Text("Redeem GES discount",style: TextStyle(color: Colors.white,fontSize: fontSize/22),)),
                     ),
                     style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 44, 44, 44),
                          foregroundColor: Colors.black,
                      shape: BeveledRectangleBorder(),
                     
                     ),
                     
                     ),
                   ),
                   pricegetting(txt: 'Sub total', value: value.calculation(),),
                   pricegetting(txt: 'Discount amount', value: '.00',),
                    pricegetting(txt: 'Discounted total', value: value.calculation(),),
                    pricegetting(txt: "Service charge (7.50%)", value: servicechargenew.toStringAsFixed(2)),
                    Padding(
            padding:  EdgeInsets.only(top: containerHeight/60,bottom: containerHeight/60),
                      child: Container(
                        color: const Color.fromARGB(142, 255, 255, 255),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                                 Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Net Total",style: TextStyle(color: Colors.black,fontSize: fontSize/20,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
                                  Text("Rs.${(double.parse(value.calculation())+servicechargenew).toString()}",style: TextStyle(color: Colors.black,fontSize: fontSize/13,fontWeight: FontWeight.bold),),
                      
                                  ],
                                  
    
                                 )
                          ],
                        )
                      ),
                    ),
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
                     Padding(
            padding:  EdgeInsets.only(left: containerHeight/200,right: containerHeight/200,top: containerHeight/120,bottom: containerHeight/40),
                     child: ElevatedButton(onPressed:() {
    
    
    
    
    
                                                print("chanux,$addressshow");
    
                     }, child: Padding(
            padding:  EdgeInsets.only(top: containerHeight/60,bottom: containerHeight/60),
                       child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Continue",style: TextStyle(color: Colors.white,fontSize: fontSize/22),),
                           SizedBox(width: 10,),
                          Icon(Icons.arrow_forward,color: Colors.white,size: fontSize/22,),
    
                         ],
                       )),
                     ),
                     style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 177, 11, 19),
                          foregroundColor: Colors.black,
                      shape: BeveledRectangleBorder(),
                     
                     ),
                     
                     ),
                   ),
    
    
                  ]
                ),
              ),        
            )
          )
        )
      ),
    ),
  )
)
    );
  }
  void servicecharge(double servicecahrge){

servicechargenew=servicecahrge*0.075;
   


  }
}