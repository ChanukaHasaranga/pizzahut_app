import 'package:flutter/material.dart';
import 'package:pizzahut_app/ExpandableContainer.dart';
import 'package:pizzahut_app/extraitemexpanded.dart';
import 'package:pizzahut_app/textfieldexpandable.dart';

class customiseingpage extends StatefulWidget {


   customiseingpage({
    
 
    super.key});

  @override
  State<customiseingpage> createState() => _customiseingpageState();
}

class _customiseingpageState extends State<customiseingpage> {
  String dropdownvalue="Pan";
  String key1="Select Crust * ";
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
      
      children: [
      
        
      Padding(
        padding:  EdgeInsets.only(top: containerHeight/60,left: containerHeight/60,right: containerHeight/60),
        child: Container(
          height: containerHeight/5.6,
          width: double.infinity,
          decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(image:AssetImage("assets/pizza.png"),fit: BoxFit.cover,alignment: Alignment.bottomCenter),
          ),
        ),
      ),
      Padding(
        padding:  EdgeInsets.only(left: containerHeight/60,right: containerHeight/60),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255)
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: containerHeight/90,top: containerHeight/90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Chilli Chicken Pizza",style: TextStyle(fontWeight: FontWeight.bold,fontSize: fontSize/14,color: Colors.black),),
                SizedBox(height: containerHeight/90,),
                Text("A pizza topped with spicy chicken, Green Chillies,onions & Mozzarella",style: TextStyle(color: const Color.fromARGB(255, 77, 77, 77),fontWeight: FontWeight.w400,fontSize: fontSize/22),),
                SizedBox(height: containerHeight/90,),

              ],
            ),
          ),
        
        ),
      ),
      Padding(
        padding:  EdgeInsets.all(containerHeight/60),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: containerHeight/60,bottom: containerHeight/60,left: containerHeight/60,right: containerHeight/10),
                child: Text("Sauce Option :",style: TextStyle(color: Colors.black,fontSize: fontSize/22),),
              ),
              Padding(
                padding:  EdgeInsets.only(top: containerHeight/60,right: containerHeight/60,bottom: containerHeight/60),
                child: Text("Tomato Base",style: TextStyle(color: Colors.black,fontSize: fontSize/22),),
              )
            ],
          ),
        ),
      ),
      Padding(
                  padding: EdgeInsets.all(containerHeight / 60),
                  child: ExpandableContainer(itemList: ["Pan", "Sausage",], pricelist: [], txt: 'Crust', imglist: ["assets/panpizza.png","assets/sausage.png"],),
                ),

                      Padding(
                  padding: EdgeInsets.all(containerHeight / 60),
                  child: ExpandableContainer(itemList: ["Large", "Medium","Personal"], pricelist: [2840,1560,840], txt: 'Size', imglist: [ "assets/8peases.jpg", "assets/6peasesjpg.jpg","assets/4peases.png",],),
                ),
                    Padding(
                  padding: EdgeInsets.all(containerHeight / 60),
                  child: extraadding(itemList: ["BBQ Chicken", "Beef Pepperoni","Cheese","Prawns","Bell Peper","Onion"], pricelist: [190,225,190,330,75,75], txt: '', imglist: [ "assets/bbq.png", "assets/beef.png","assets/cheese.png","assets/prawns.png","assets/bellpaper.png","assets/onion.png"],)
                ), 
                  Padding(
                  padding: EdgeInsets.all(containerHeight / 60),
                  child: textexpandable()
                ),   
               

      ],
      
      
      ),
    ),
  )




),

    );
  }
}