import 'package:flutter/material.dart';

class textfield1 extends StatefulWidget {
  String txt;

   textfield1(


    
    {
     required this.txt, 
      
      super.key});

  @override
  State<textfield1> createState() => _textfield1State();
}



class _textfield1State extends State<textfield1> {
  final houceno=TextEditingController();
  final street=TextEditingController();

  @override
  Widget build(BuildContext context) {
  double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.txt=="Enter your delivery Location") {

          showDialog(
            
            context: context,
          
           builder:(context) {
             
                   return AlertDialog(
  backgroundColor: Color.fromARGB(255, 255, 255, 255),
  content: Container(
    width: double.infinity,
    height: containerHeight/2,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Close",
              style: TextStyle(color: const Color.fromARGB(255, 56, 56, 56), fontSize: fontSize / 25, fontWeight: FontWeight.w200,),
            ),
          ),
        ),
                SizedBox(height: 10), // Add some spacing if needed

        Center(
          child: Text(
            
            "Locate you-DR-Enter Your Location",
            style: TextStyle(color: const Color.fromARGB(255, 49, 49, 49),fontSize: fontSize / 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
          ),
        ),
                SizedBox(height: containerHeight/40,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("House No",style: TextStyle(color: Colors.black,fontSize: fontSize/30),),
                Container(
                  height: containerHeight/15,
                  width: fontSize/6,
                  child: TextField(
                    controller: houceno,
                    decoration: InputDecoration(
                      hintText: "25/1",
                      
                      hintStyle: TextStyle(fontSize: fontSize/30,color: const Color.fromARGB(56, 0, 0, 0)),
                      
                      focusedBorder: OutlineInputBorder(
                        
                        borderSide: BorderSide(color: const Color.fromARGB(148, 0, 0, 0))
                      ),
                      enabledBorder: OutlineInputBorder(
                        
                                                borderSide: BorderSide(color: const Color.fromARGB(148, 0, 0, 0))
                  
                      )
                      
                    ),
                  
                  ),
                )
              ],
            ),
            SizedBox(
              width: fontSize/20,
            ),
            
Column(
  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Street",style: TextStyle(color: Colors.black,fontSize: fontSize/30),),
                Container(
                  height: containerHeight/15,
                  width: fontSize/2.5,
                  child: TextField(
                    controller: street,
                    decoration: InputDecoration(
                      hintText: "Anderson Road, Colombo 04",
                      
                      hintStyle: TextStyle(fontSize: fontSize/30,color: const Color.fromARGB(56, 0, 0, 0)),
                      
                      focusedBorder: OutlineInputBorder(
                        
                        borderSide: BorderSide(color: const Color.fromARGB(148, 0, 0, 0))
                      ),
                      enabledBorder: OutlineInputBorder(
                        
                                                borderSide: BorderSide(color: const Color.fromARGB(148, 0, 0, 0))
                  
                      )
                      
                    ),
                  
                  ),
                )
              ],
            )
              




            

          ],
        ),
        SizedBox(height: containerHeight/20,),
        Center(
          child: ElevatedButton(onPressed:() {
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:Colors.white,
                 side: BorderSide(color: Colors.black,width:0.3),
                 shape: BeveledRectangleBorder(),
            fixedSize: Size(fontSize, containerHeight/30)
            
          ),
          
          
          
           child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Icon(Icons.location_searching,color: Colors.black,size: fontSize/30,),
               Text("Locate me",style: TextStyle(color: Colors.black,fontSize: fontSize/30),),
             ],
           )
           
           ),
        )


       
      ],
    ),
  ),
);


           },
           
           
           );
            
          }
        });
      },
      child: Container(
        height: containerHeight/10,
        width: double.infinity,
           
           decoration: BoxDecoration(
            color: Colors.grey
           ),
      child: Center(child: Text(widget.txt,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: fontSize/20),)),
      
      ),
    );
  }
}