import 'package:get/get.dart';
import 'package:flutter/material.dart';
 //=========================================================================================

//                         By Mohamed Yahia. Mahmoud

//=========================================================================================
class HomeNavController extends GetxController with GetTickerProviderStateMixin {
  var tabIndex = 0;
   final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
  var pageController = PageController().obs;
  late TabController tabController;

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    changeTabIndex(0);
    tabController = TabController(length: 3, vsync: this);

  }
}