import 'package:flutter/material.dart';

class LocationProvider extends ChangeNotifier {
  String _address = "";

  String get address => _address;

  set address(String newAddress) {
    _address = newAddress;
    notifyListeners();
  }
}
