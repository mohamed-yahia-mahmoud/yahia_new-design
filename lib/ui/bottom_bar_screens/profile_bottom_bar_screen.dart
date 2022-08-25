import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ProfileBottomBarScreen extends StatefulWidget {
  @override
  _ProfileBottomBarScreenState createState() => _ProfileBottomBarScreenState();
}

class _ProfileBottomBarScreenState extends State<ProfileBottomBarScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("welcome 4",style: TextStyle(fontSize: 14,color: Colors.greenAccent),),),
    ) ;
  }
}
