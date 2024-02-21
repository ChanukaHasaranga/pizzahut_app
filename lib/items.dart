import 'package:flutter/material.dart';
import 'package:pizzahut_app/custermusiingpage.dart';

class items extends StatelessWidget {
  const items({super.key});

  @override
  Widget build(BuildContext context) {
  double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
    return SafeArea(child: Padding(
      padding:  EdgeInsets.only(top: containerHeight/40,left: fontSize/30,right: fontSize/30),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return customiseingpage();
          },));
        },
        child: Container(
          height: containerHeight/5,
          width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow:[BoxShadow(
        blurRadius: 2,
        color: Colors.black      
          )]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         Container(
          height: containerHeight/5,
          width: fontSize/3,
          decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(image: AssetImage("assets/pizza.png"),fit: BoxFit.contain,alignment: Alignment.bottomLeft)
          ),
         ),
         SizedBox(width: fontSize/14,),
         Padding(
           padding:  EdgeInsets.only(top: containerHeight/40),
           child: Container(
            child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
              Text("Chilli Chicken Pizza",style: TextStyle(color: Colors.black,fontSize: fontSize/26),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Text("               Strating From  ",style: TextStyle(color: Color.fromARGB(105, 0, 0, 0),fontSize: fontSize/30),),
                 Text("Rs.840",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: fontSize/26),)
                ],
                 
              ),
              Padding(
                padding:  EdgeInsets.only(top: containerHeight/40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                         
                    fixedSize: Size(fontSize/2, containerHeight/20),
                    backgroundColor: Colors.green,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    side: BorderSide(color: Colors.transparent)
                  ),
                  onPressed:() {
                  
                   
                }, child: Center(child: Text("Customized",style: TextStyle(color: Colors.white,fontSize: fontSize/26),),)),
              )
                 ],
            ),
           ),
         )
        
          ],
        ),
        
        ),
      ),
    ));
  }
}