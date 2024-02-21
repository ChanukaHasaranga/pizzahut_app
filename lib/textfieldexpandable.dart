import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class textexpandable extends StatefulWidget {
  const textexpandable({super.key});

  @override
  State<textexpandable> createState() => _textexpandableState();
}

class _textexpandableState extends State<textexpandable> {

  final tfield=TextEditingController();
      bool _isExpanded = false;
    Color bordercolor=Colors.black;
      int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
     double fontsize=MediaQuery.of(context).size.width;
    double containerheight=MediaQuery.of(context).size.height;
    return   Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Any Special Instruction?',style: TextStyle(color: Colors.red,fontSize: fontsize/20),),
            onTap: () {
              setState(() {
                // Toggle the expansion state
                _isExpanded = !_isExpanded;
              });
            },
          ),
   Container(
                 width: double.infinity,
                 child: Divider(

                color: _isExpanded? Colors.red:Colors.white,

                   height: containerheight/25,
                   thickness: containerheight/300,
                   indent: 3,
                   endIndent: 2,
                 ),
           ),
          _isExpanded ? buildExpandedContent() : SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget buildExpandedContent() {
    double fontsize=MediaQuery.of(context).size.width;
    double containerheight=MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: containerheight/12,
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: TextField(
        controller: tfield,
        cursorColor: Colors.green,
        style:TextStyle(color: Colors.black,fontSize: fontsize/20),
        decoration: InputDecoration(
          hintText: "Type your Instructions here..",
          hintStyle: TextStyle(color: const Color.fromARGB(28, 0, 0, 0),fontSize: fontsize/24),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255))
          ) ,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          )
          
        ),
      ),
    );
  }
  
}