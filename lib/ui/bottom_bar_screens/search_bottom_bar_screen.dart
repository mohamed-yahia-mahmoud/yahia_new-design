import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


 class SearchBottomBarScreen extends StatefulWidget {
  bool isFirstTime;

  SearchBottomBarScreen(this.isFirstTime);

  @override
  _SearchBottomBarScreenState createState() => _SearchBottomBarScreenState();
}

class _SearchBottomBarScreenState extends State<SearchBottomBarScreen>
    with TickerProviderStateMixin {
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



