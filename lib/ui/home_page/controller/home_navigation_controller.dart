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

  bool showChat=true;
  bool showWallet=true;

  var pageController = PageController().obs;
  var animateController;
   RxList stories =  [].obs;
   late TabController tabController;
  @override
  void onInit() async{

    // TODO: implement onInit

    super.onInit();
    animateController = AnimationController(vsync: this).obs;
    tabController = TabController(length: 3, vsync: this);

  }
}