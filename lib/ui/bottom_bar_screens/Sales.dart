import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:yahia_new_task/shared/app_colors.dart';


 class Sales extends StatefulWidget {


  Sales();

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Sales ",style: TextStyle(fontSize: 22,color: AppColors.selectedTab),),),
    ) ;
  }
}



