import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LiveTime extends StatefulWidget {
  @override
  _LiveTimeState createState() => _LiveTimeState();
}

class _LiveTimeState extends State<LiveTime> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
  double fontSize = MediaQuery.of(context).size.width;

    return Text(
      DateFormat.Hm().format(DateTime.now()),
      style: TextStyle(fontSize: fontSize/30,color:Colors.black,fontWeight: FontWeight.w300),
    );
  }
}