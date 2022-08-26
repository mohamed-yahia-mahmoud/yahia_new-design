import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/app_colors.dart';
import 'BasketCard.dart';
import 'CustomTabBar.dart';
import 'MyGridView.dart';

class Body extends StatelessWidget {
    Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(left: 0,right: 0,bottom: 0,top: 190.h,
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.bgrColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
        ),
        child: Column(
          children: [

            ///kid info and basket item
            BasketCard(),
            /// custom tabButton
            CustomTabBar(),
            ///grid view
            MyGridView(),

          ],
        ),
      ),);
  }
}
