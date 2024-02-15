import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut_app/loadingpage.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
runApp(
DevicePreview(
  builder:(context) => 

Myapp()
)
);


}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,

       //device preview ekata dmma code
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
    title: "Pizzahut",
    home:loadingpage() ,

    );
  }
}