import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RewardsBottomBarScreen extends StatefulWidget {
  @override
  _RewardsBottomBarScreenState createState() => _RewardsBottomBarScreenState();
}

class _RewardsBottomBarScreenState extends State<RewardsBottomBarScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("welcome 6",style: TextStyle(fontSize: 14,color: Colors.greenAccent),),),
    ) ;
  }
}
