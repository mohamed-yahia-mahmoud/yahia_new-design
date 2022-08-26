 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/app_colors.dart';

Future<dynamic> showInfoDialog() {
  return Get.dialog(
      Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: AppColors.selectedTab),
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 0.36.sh),
            child: RichText(
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xFFFFA42D)),
                    children: [
                      const TextSpan(
                          text:
                              'عند رؤيتك لهذه العلامة فهذا يعني أن إدارة حسابات المعلنين غير نشط ، يرجى استكمال'),
                      TextSpan(
                          text: ' بيناتك ',
                          style: TextStyle(
                              fontSize: 16.sp, color: AppColors.selectedTab)),
                      const TextSpan(text: ' والتواصل مع المنصة للتنشيط'),
                    ])),
          ),
        ],
      ),
      barrierColor: Colors.transparent);
}
