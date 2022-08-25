import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yahia_new_task/ui/bottom_bar_screens/More.dart';
import 'package:yahia_new_task/ui/bottom_bar_screens/Orders.dart';
import 'package:yahia_new_task/ui/bottom_bar_screens/Sales.dart';
import 'package:yahia_new_task/ui/bottom_bar_screens/Wallet.dart';
import 'package:yahia_new_task/ui/home_page/widgets/customTab.dart';
import '../../../shared/app_colors.dart';
import '../../bottom_bar_screens/HomeScreen.dart';
import '../controller/home_navigation_controller.dart';
//=========================================================================================

//                         By Mohamed Yahia. Mahmoud

//=========================================================================================
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: ()async{
        print("WillPopScope Nav");

        return true;
      },
      child: GetBuilder<HomeNavController>(
        init: HomeNavController(),
        builder: (controller)=>DefaultTabController(
          length: 5,
          child: Scaffold(
             resizeToAvoidBottomInset:false,
            backgroundColor: Colors.transparent,

            bottomNavigationBar: Material(
              child: TabBar(
                  unselectedLabelColor: AppColors.unseletabColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  onTap: (index){
                    controller.changeTabIndex(index);
                  },
                  padding: const EdgeInsets.only(left: 6.0,right: 6.0,top: 6.0,bottom: 4.0),
                  labelPadding:
                  const EdgeInsets.only(left: 8.0, right: 8.0),
                  indicatorColor: Colors.transparent,

                  tabs:   [





                    CustomTab('house.png', controller.tabIndex==4?AppColors.selectedTab:AppColors.unseletabColor, 'الرئيسية'),

                    CustomTab('wallet2.png', controller.tabIndex==3?AppColors.selectedTab:AppColors.unseletabColor, 'المحفظة'),

                    CustomTab('selling.png', controller.tabIndex==2?AppColors.selectedTab:AppColors.unseletabColor, 'المبيعات'),

                    CustomTab('cart-check.png', controller.tabIndex==1?AppColors.selectedTab:AppColors.unseletabColor, 'طلبات مسبقة'),

                    CustomTab('three-dots.png', controller.tabIndex==0?AppColors.selectedTab:AppColors.unseletabColor, 'المزيد'),


                  ]),

            ),
            body: SafeArea(
              top: false,
              child: TabBarView(
                  children: [

                    HomeScreen(),
                    Wallet() ,
                    Sales(),
                    Orders() ,
                    More(),

                  ]),
            ),
          ),
        ),
      ),
    );
  }

 }
