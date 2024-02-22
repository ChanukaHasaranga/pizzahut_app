import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut_app/custermusiingpage.dart';

class ExpandableContainer extends StatefulWidget {

  List<String>itemList;
  List<int>pricelist;
  List<String>imglist;
  String txt;
  Function(int)pizzasizeprice;
   ExpandableContainer({
    
    required this.itemList,
    required this.pricelist,
    required this.imglist,
    required this.txt,
    required this.pizzasizeprice,
    super.key});

  @override
  State<ExpandableContainer> createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  String item1="";
    bool _isExpanded = false;
    Color bordercolor=Colors.black;
      int selectedIndex = -1;

String prices='';
List<int>priceasizess=[];
int realprice=0;

  @override
  Widget build(BuildContext context) {
    double fontsize=MediaQuery.of(context).size.width;
    double containerheight=MediaQuery.of(context).size.height;
    return  Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Select ${widget.txt} * ($item1) Selected',style: TextStyle(color: Colors.red,fontSize: fontsize/20),),
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
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: fontsize/20,
          mainAxisSpacing: 8.0,
        ),
        
        itemCount:widget.itemList.length, // Change this to the number of items you want
        itemBuilder: (context, index) {
          if (widget.pricelist == null || widget.pricelist.isEmpty ) {
               prices='';
               priceasizess=[];
            
          }else{
               prices="(Rs. ${widget.pricelist[index]})";
               priceasizess.add(widget.pricelist[index]);

          }
          return GestureDetector(
            onTap: () {

              setState(() {
                
                
        if (widget.pricelist == null || widget.pricelist.isEmpty ) {
               realprice=0;
            
          }else{
                   realprice=widget.pricelist[index];
          }
                
                
                
                
                item1=widget.itemList[index];
                
                                selectedIndex = index;
              });
              // Handle item selection here
              print(widget.itemList);
                          print(realprice);
                          widget.pizzasizeprice(realprice);

            },
            child: Container(
              decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),

                border: Border.all(color: selectedIndex == index ? Color.fromARGB(255, 224, 158, 17) : const Color.fromARGB(255, 0, 0, 0),width: 1)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      
                      height: containerheight/10,
                     decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(image: AssetImage(widget.imglist[index]),fit: BoxFit.contain)
                     ),
                    ),
                    Text(widget.itemList[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:fontsize/20),),
                    Text(prices,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize:fontsize/20),),

                    
                  ],
                ),
              ),
            ),
            
          );
        },
      ),
    );
  }
}