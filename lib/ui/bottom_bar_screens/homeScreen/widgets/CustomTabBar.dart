import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home_page/widgets/tab_button.dart';
import '../controller/home_screen_controller.dart';

class CustomTabBar extends StatelessWidget {
    CustomTabBar({Key? key}) : super(key: key);
  var controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 70,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
