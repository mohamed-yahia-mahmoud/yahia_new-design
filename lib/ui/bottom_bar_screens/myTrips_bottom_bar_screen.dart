import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MyTripsBottomBarScreen extends StatefulWidget {


  @override
  _MyTripsBottomBarScreenState createState() => _MyTripsBottomBarScreenState();
}

class _MyTripsBottomBarScreenState extends State<MyTripsBottomBarScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("welcome 3",style: TextStyle(fontSize: 14,color: Colors.greenAccent),),),
    ) ;
  }
}
