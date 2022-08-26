import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../shared/app_colors.dart';
import '../../../home_page/widgets/card_item.dart';
import '../../../home_page/widgets/tab_button.dart';
import '../controller/home_screen_controller.dart';


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller)=> Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient:    LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.beginColor, AppColors.endColor],
              ),
            ),
              child: Column(
                children: [
                  /// notification and appName
                  Padding(
                    padding: const EdgeInsets.only(top:50.0,left: 16,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/bell.png',width: 22,height: 25,),
                        Expanded(child: Image.asset('assets/icons/Maqsafi Final logo-03.png',width: 78,height: 29,)),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:31.0,left: 16,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        /// not registered
                        Image.asset('assets/icons/Not registered.png',width: 56,height: 56,),

                        /// search by num
                        Image.asset('assets/icons/search by number.png',width: 56,height: 56,),

                        /// search btn
                        SizedBox(
                          width: 205,
                          height: 56,
                          child:
                          TextField(
                            textAlign: TextAlign.right,
                            //controller: searchCtrl,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'اسم الطالب',
                              hintStyle: const TextStyle(fontSize: 16,color: AppColors.hintTextColor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(16),
                              fillColor: Colors.white.withOpacity(.9),
                            ),
                          ),
                        )
                       ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(left: 0,right: 0,bottom: 0,top: 190,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.bgrColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
              child: Column(
                children: [

                  /// custom tabButton
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                       height: 70,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          TabButton(
                            text: 'مشروبات',
                            myWidth: 109,
                            myHeight: 45,
                            img:'coffee-cup.png' ,
                            myImgHeight: 35,
                            myImgWidth: 22,
                            pageNum: 0,
                            selectedPage: controller.selectedPage,
                            onPressed: (){
                              controller.changePage(0);
                            },
                          ),
                          TabButton(
                            text: 'سندوتشات',
                            myWidth: 131,
                            myHeight: 45,
                            img:'hamburger.png' ,
                            myImgHeight: 34,
                            myImgWidth: 34,
                            pageNum: 1,
                            selectedPage: controller.selectedPage,
                            onPressed: (){
                              controller.changePage(1);
                            },
                          ),
                          TabButton(
                            text: 'بيتزا',
                            myWidth: 86,
                            myHeight: 16,
                            img:'pizza-slice.png' ,
                            myImgHeight: 35,
                            myImgWidth: 35,
                            pageNum: 2,
                            selectedPage: controller.selectedPage,
                            onPressed: (){
                              controller.changePage(2);
                            },
                          ),
                          TabButton(
                            text: 'الكل',
                            myWidth: 51,
                            myHeight: 45,
                            pageNum: 3,
                            selectedPage: controller.selectedPage,
                            onPressed: (){
                              controller.changePage(3);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///grid view
              Expanded(
                    child: GridView.builder(
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: (.4/.6),crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
                         padding: const EdgeInsets.only(bottom:10,left: 15,right: 15),
                        itemCount: controller.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CarDItem(controller.items[index].kcalNum, controller.items[index].img,
                              controller.items[index].imgWidth, controller.items[index].imgHeight,
                              controller.items[index].productName, controller.items[index].numOfProductInStore, controller.items[index].price,
                                  () {print('${controller.items[index].productName } clicked'); });
                        }
                     ),
                  ),


                ],
              ),
            ),
            )
          ]
        )
      ),
    ) ;
  }
}
