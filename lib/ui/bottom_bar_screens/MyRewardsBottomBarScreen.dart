import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class MyRewardsBottomBarScreen extends StatefulWidget {
  @override
  _MyRewardsBottomBarScreenState createState() => _MyRewardsBottomBarScreenState();
}

class _MyRewardsBottomBarScreenState extends State<MyRewardsBottomBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("welcome 2",style: TextStyle(fontSize: 14,color: Colors.greenAccent),),),
    ) ;
  }
}

