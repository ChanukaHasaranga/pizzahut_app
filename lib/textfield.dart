import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:pizzahut_app/cartmodel.dart';
import 'package:pizzahut_app/menu.dart';
import 'package:provider/provider.dart';
import 'package:geocoding/geocoding.dart';
import 'package:url_launcher/url_launcher.dart';


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
  late String lat;
  late String long;
  String address="";

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
_getcurentlocation().then((value) {
  lat="${value.latitude}";
  long="${value.longitude}";
  setState(() {
    print("Latitude: $lat,   Longtude: $long");


    
  });
    _livelocation();



});

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
        ),
        SizedBox(height: containerHeight/30,),
        Center(
          child: ElevatedButton(onPressed:() {
            setState(() {
              _openmap(lat,long);

            });

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
               Text("Get your Location Google Map",style: TextStyle(color: Colors.black,fontSize: fontSize/30),),
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
  Future<Position> _getcurentlocation() async{
    bool serviceEnable=await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {
      return Future.error("Location service are disable");
      
    }
    LocationPermission permission=await Geolocator.checkPermission();
       if (permission==LocationPermission.denied) {
        permission=await Geolocator.requestPermission();
        if (permission==LocationPermission.denied) {
          return Future.error("Location permition denided");
          
        }
         
       }
       if (permission==LocationPermission.deniedForever) {
        return Future.error(
          "Location permitions are permanetly denied,We Cannot request permition"
        );
         
       }
       return await Geolocator.getCurrentPosition();
  }
  void _livelocation() async{
    LocationSettings locationSettings=const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100
    );
    Geolocator.getPositionStream(locationSettings: locationSettings)
    .listen((Position position) async {

    lat= position.latitude.toString();
    long =position.longitude.toString();

setState(() {
  print("Latitude: $lat,Longtide: $long");
});

try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        double.parse(lat),
        double.parse(long),
      );

      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
         address =
            "${placemark.subThoroughfare} ${placemark.thoroughfare}, ${placemark.locality}, ${placemark.administrativeArea}, ${placemark.country}".toString();

        setState(() {
          print("Latitude: $lat, Longtide: $long, Location: $address");
          print(address);

showDialog(
  context:context, 

builder:(context) {
return AlertDialog(
backgroundColor: Color.fromARGB(0, 255, 255, 255),
content: Container(
      width: double.infinity,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Text(address,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:16),),
                    Center(child: Text("Is the Address Correct ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20),)),



          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: BeveledRectangleBorder()
            ),
            
            onPressed:() {
            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
              return menu();
            },));
            
          }, child: Center(child: Text("Yes",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),)),


            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: BeveledRectangleBorder()
            ),
            
            onPressed:() {
Navigator.of(context).pop();          
          }, child: Center(child: Text("No",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),))



      ],
    ),
),

) ; 

},);

        });
      }
    } catch (e) {
      print("Error: $e");
    }

    });
  }

// ...

Future<void> _openmap(String lat, String long) async {
  try {
    final mapResult = await MapsLauncher.launchQuery(' $lat, $long');

    if (!mapResult) {
      throw 'Could not launch maps';
    }
  } catch (e) {
    print("Error launching maps: $e");
  }
}



}