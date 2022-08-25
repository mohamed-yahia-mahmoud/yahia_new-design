import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(fontSize: 22,color: AppColors.selectedTab),),),
    ) ;
  }
}
