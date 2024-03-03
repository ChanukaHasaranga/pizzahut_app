import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut_app/items.dart';

class listitem extends StatefulWidget {

  const listitem({super.key});

  @override
  State<listitem> createState() => _listitemState();
}

class _listitemState extends State<listitem> {

final pizzatype=FirebaseFirestore.instance.collection("CLASSIC").snapshots();


  @override
  Widget build(BuildContext context) {
     double containerHeight = MediaQuery.of(context).size.height;
  double fontSize = MediaQuery.of(context).size.width;

    return    Container(
            height: containerHeight/2,
              child: StreamBuilder(

                stream: pizzatype,
                builder: (context, snapshot) {

                  if (snapshot.hasError) {

                    return Text("Errors");
                    
                  }
                  if (snapshot.connectionState==ConnectionState.waiting) {

                    return Text("Loading.........");
                    
                  }


var docpizza=snapshot.data!.docs;


                  return ListView.builder(
                    
                    scrollDirection: Axis.vertical,
                    itemCount: docpizza.length,
                    itemBuilder:(context, index) {

                      
                    return items(
                      
                      pricebig: int.parse(docpizza[index]['price']),
                     
                     name:docpizza[index]['name'], 
                     
                     imagepath:docpizza[index]['imagepath'],);
                  
                  
                  },);
                }
              ),
          );

  }
}