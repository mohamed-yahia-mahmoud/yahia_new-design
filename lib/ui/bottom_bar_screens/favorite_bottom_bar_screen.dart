import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FavoriteBottomBarScreen extends StatefulWidget {
  @override
  _FavoriteBottomBarScreenState createState() => _FavoriteBottomBarScreenState();
}

class _FavoriteBottomBarScreenState extends State<FavoriteBottomBarScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("welcome 1",style: TextStyle(fontSize: 14,color: Colors.greenAccent),),),
    ) ;
  }
}
