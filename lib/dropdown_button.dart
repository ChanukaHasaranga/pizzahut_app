import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
   dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String dropdownvalue='Mr.';

  @override
  Widget build(BuildContext context) {
  double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;



    return  Container(
    height: containerHeight/14,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(92, 0, 0, 0))
      ),
        child: DropdownButton<String>(
          value: dropdownvalue,
          icon: Icon(Icons.arrow_drop_down_outlined,color: Colors.black,size: fontSize/25,),
          style: TextStyle(color: Colors.black,fontSize: fontSize/24),
          onChanged: (String ? newvalue) {
            setState(() {
              dropdownvalue=newvalue!;
            });
            
          },
          
          items: [
DropdownMenuItem<String>(
  
  value: 'Mr.',
  child:Text("Mr.",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSize/24),)
  
  
  
  ),
  DropdownMenuItem<String>(
  
  value: 'Mrs.',
  child:Text("Mrs.",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSize/24),)
  
  
  
  ),
  DropdownMenuItem<String>(
  
  value: 'Miss.',
  child:Text("Miss.",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSize/24),)
  
  
  
  ),
  DropdownMenuItem<String>(
  
  value: 'Dr.',
  child:Text("Dr.",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSize/24),)
  
  
  
  ),
  DropdownMenuItem<String>(
  
  value: 'Rev.',
  child:Text("Rev.",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSize/24),)
  
  
  
  ),
  DropdownMenuItem<String>(
  
  value: 'Ms.',
  child:Text("Ms.",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSize/24),)
  
  
  
  )







          ]),


    );
  }
}