import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut_app/cartmodel.dart';
import 'package:pizzahut_app/firebase_options.dart';
import 'package:pizzahut_app/loadingpage.dart';
import 'package:pizzahut_app/location.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  

runApp(
  
  MultiProvider(
    
    providers: [
     ChangeNotifierProvider(
    create: (context) =>CartModel(),),

    ChangeNotifierProvider(create:(context) => LocationProvider(),)
    ],
     child:Myapp(),
    
  )

);


}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       //device preview ekata dmma code

      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
    title: "PizzaHut",
    home:loadingpage() ,

    );
  }
}