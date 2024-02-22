import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{

  List items = [];


 


  List csrtitems = [];

  get cartItems => csrtitems;

  get productitems=> items;


  void additemtocart(List newitem){
items=newitem;
csrtitems.add(items);
print("lets see $csrtitems");
notifyListeners();


  }


void removeitemfromcart(int index){


csrtitems.removeAt(index);

notifyListeners();


}


String calculation(){

double totalprice=0;

for(int i=0;i<csrtitems.length;i++){

totalprice+=double.parse(csrtitems[i][1]);

print("totall price is $totalprice");

  
}

return totalprice.toStringAsFixed(2);



}




}