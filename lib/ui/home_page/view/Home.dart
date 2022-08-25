import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/app_colors.dart';
import '../../bottom_bar_screens/rewards_bottom_bar_screen.dart';
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
            //key: controller.scaffoldKey,
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
                  indicatorPadding: const EdgeInsets.only(top:-2.0),

                  tabs:   [
                    Tab(
                      height: 50.0,
                      iconMargin: EdgeInsets.zero,
                      icon: ImageIcon(const AssetImage(
                        'assets/icons/house.png',),size: 20,color:  controller.tabIndex==0?AppColors.selectedTab:AppColors.unseletabColor,),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("الرئيسية",style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: controller.tabIndex==0?AppColors.selectedTab:AppColors.unseletabColor,),),
                      ),
                    ),
                      Tab(
                      height: 50.0,
                      iconMargin: EdgeInsets.zero,
                      icon: ImageIcon(const AssetImage(
                        'assets/icons/wallet2.png',),size: 20,color: controller.tabIndex==1?AppColors.selectedTab:AppColors.unseletabColor,),
                      child:   Align(
                        alignment: Alignment.center,
                        child: Text("المحفظة",style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: controller.tabIndex==1?AppColors.selectedTab:AppColors.unseletabColor,),),
                      ),
                    ),
                      Tab(
                      height: 50.0,
                      iconMargin: EdgeInsets.zero,
                      icon: ImageIcon(const AssetImage(
                        'assets/icons/selling.png',),size: 20,color: controller.tabIndex==2?AppColors.selectedTab:AppColors.unseletabColor,),
                      child: Align(
                        alignment: Alignment.center,
                        child:   Text("المبيعات",style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color:controller.tabIndex==2?AppColors.selectedTab:AppColors.unseletabColor,),),
                      ),
                    ),
                      Tab(
                      height: 50.0,
                      iconMargin: EdgeInsets.zero,
                      icon:   ImageIcon(const AssetImage(
                        'assets/icons/cart-check.png',),size: 20,color: controller.tabIndex==3?AppColors.selectedTab:AppColors.unseletabColor,),
                      child:   Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("طلبات مسبقة",style:   TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: controller.tabIndex==3?AppColors.selectedTab:AppColors.unseletabColor,),),
                      ),
                    ),
                      Tab(
                      height: 50.0,
                      iconMargin: EdgeInsets.zero,
                      icon: ImageIcon(const AssetImage(
                        'assets/icons/three-dots.png',),size: 20,color: controller.tabIndex==4?AppColors.selectedTab:AppColors.unseletabColor,),
                      child: Align(
                        alignment: Alignment.center,
                        child:   Text("المزيد",style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: controller.tabIndex==4?AppColors.selectedTab:AppColors.unseletabColor,),),
                      ),
                    ),
                  ]),

            ),
            body: SafeArea(
              top: false,
              child: TabBarView(
                  children: [
                    RewardsBottomBarScreen(),
                    RewardsBottomBarScreen() ,
                    RewardsBottomBarScreen(),
                    RewardsBottomBarScreen() ,
                    RewardsBottomBarScreen()
                  ]),
            ),
          ),
        ),
      ),
    );
  }

 }
