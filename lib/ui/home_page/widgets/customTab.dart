import 'package:flutter/material.dart';
class CustomTab extends StatelessWidget {
  String icon;
  Color tabColor;
  String tabName;


  CustomTab(this.icon, this.tabColor, this.tabName);

  @override
  Widget build(BuildContext context) {
    return  Tab(
      height: 50.0,
      iconMargin: EdgeInsets.zero,
      icon: ImageIcon(  AssetImage(
        'assets/icons/$icon',),size: 20,color:tabColor,),
      child: Align(
        alignment: Alignment.center,
        child: Text(tabName,style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: tabColor,),),
      ),
    );
  }
}
