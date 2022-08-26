import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/app_colors.dart';
import '../../../home_page/widgets/basket_item.dart';
import '../controller/home_screen_controller.dart';

class BasketCard extends StatelessWidget {
    BasketCard({Key? key}) : super(key: key);

  var controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return
      Obx(()=>  Visibility(
        visible: controller.visibleBasket.value,
        child: Container(
          height: 200.h,
          decoration: const BoxDecoration(
              color: AppColors.endColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
          ),
          child: Column(
            children: [
              ///kid & img & close icon
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  /// close icon
                  InkWell(
                    onTap: (){
                      controller.visibleBasket.value=false;
                    },
                    child: Padding(
                      padding:   EdgeInsets.only(top:9.0.w,left: 8.h),
                      child: Image.asset('assets/icons/x-circle.png',width: 25.h,height: 25.h,),
                    ),
                  ),

                  /// kid icon and his details
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      /// kid details
                      Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Column(
                          mainAxisAlignment:   MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            /// house num
                            Row(
                              children: [
                                ///house num
                                RichText(
                                  text: const TextSpan(
                                      style:     TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'SST Arabic'),
                                      children: [
                                        TextSpan(text:'رقم  '),
                                        TextSpan(text:'135', style: TextStyle(color: AppColors.phoneNumColor,fontSize: 14,fontFamily: 'SST Arabic',fontWeight: FontWeight.bold)),
                                      ]
                                  ),
                                ),
                                ///house icon
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:4.0),
                                  child: Image.asset('assets/icons/shop.png',width: 12.32.w,height: 11.55.h,),
                                ),
                              ],
                            ),
                            /// kid name
                            const  Padding(
                              padding:  EdgeInsets.all(4.0),
                              child:   Text('محمد بن عبد الله الفلاج',style: TextStyle(color: AppColors.whiteColor,fontSize: 15,fontFamily: 'SST Arabic',fontWeight: FontWeight.w400),),
                            ),

                            ///Wallet daily maximum
                            Row(
                              children: [
                                /// daily deposit
                                Padding(
                                  padding: const EdgeInsets.only(right:12.0),
                                  child: RichText(
                                    text: const TextSpan(
                                        style:     TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'SST Arabic'),
                                        children: [
                                          TextSpan(text:'الحد اليومي '),
                                          TextSpan(text:'15,00 ريال', style: TextStyle(color: AppColors.phoneNumColor,fontSize: 14,fontFamily: 'SST Arabic',fontWeight: FontWeight.bold)),
                                        ]
                                    ),
                                  ),
                                ),
                                ///wallet
                                Row(
                                  children: [
                                    ///amount
                                    RichText(
                                      text: const TextSpan(
                                          style:     TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'SST Arabic'),
                                          children: [
                                            TextSpan(text:'الرصيد '),
                                            TextSpan(text:'10,000 ريال', style: TextStyle(color: AppColors.phoneNumColor,fontSize: 14,fontFamily: 'SST Arabic',fontWeight: FontWeight.bold)),
                                          ]
                                      ),
                                    ),
                                    ///wallet icon
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:4.0),
                                      child: Image.asset('assets/icons/credit-card-2-back.png',width: 13.67.w,height: 10.25.h,),
                                    ),
                                  ],
                                ),

                              ],
                            )

                          ],
                        ),
                      ),

                      ///kid img
                      Padding(
                        padding:   EdgeInsets.only(right: 8.0.w,top: 12.h,left: 3.w),
                        child: Image.asset('assets/images/kid.png',width: 56.h,height: 57.h,),
                      ),
                    ],
                  ),

                ],
              ),
              /// basket items
              Padding(
                padding:   EdgeInsets.only(top:19.0.h),
                child: Container(
                  height: 105.h,
                  decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      ///selected item list
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: SizedBox(
                          height: 70,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              BasketItem(
                                numOfItem: 3,
                                img: 'burger',
                              ),
                              BasketItem(
                                numOfItem: 1,
                                img: 'salaad',
                              ),
                              BasketItem(
                                numOfItem: 1,
                                img: 'cacke',
                              ),
                              BasketItem(
                                numOfItem: 2,
                                img: 'bottle',
                              ),BasketItem(
                                numOfItem: 1,
                                img: 'molto',
                              ),

                            ],
                          ),
                        ),
                      ),

                      ///total and buy btn
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///buy btn
                            Container(
                              width: 66.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                  color: AppColors.buyButtonColor,
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              child: Center(child: Text('شراء',style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'SST Arabic'),)),
                            ),


                            ///total
                            RichText(
                              text: const TextSpan(
                                  style:     TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'SST Arabic'),
                                  children: [
                                    TextSpan(text:'الاجمالى   '),
                                    TextSpan(text:'5  ريال', style: TextStyle(color: AppColors.endColor,fontSize: 14,fontFamily: 'SST Arabic',fontWeight: FontWeight.bold)),
                                  ]
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),);
  }
}
