import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/app_colors.dart';



class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Wallet",style: TextStyle(fontSize: 22,color: AppColors.selectedTab),),),
    ) ;
  }
}

