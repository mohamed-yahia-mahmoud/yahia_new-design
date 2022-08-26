import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/app_colors.dart';

class CarDItem extends StatelessWidget {

  final int? kcalNum;
  final String? img;
  final double? imgWidth;
  final double? imgHeight;
  final String? productName;
  final int? numOfProductInStore;
  final double? price;
  final VoidCallback? onPressed;


  CarDItem(this.kcalNum, this.img, this.imgWidth, this.imgHeight,
      this.productName, this.numOfProductInStore, this.price, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ///Kcal and info
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///kcal
                Container(
                  width: 71,
                  height: 18,
                  decoration: BoxDecoration(
                    color: AppColors.kcalColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      /// man icon
                      Image.asset('assets/icons/man kcal.png',width: 10,height: 13,),
                        Text('$kcalNum Kcal',style:   TextStyle(color: AppColors.kcaTextColor,fontFamily: 'Tajawal',fontSize: 12),)
                    ],
                  ),
                ),

                /// info
                Image.asset('assets/icons/information.png',width: 18,height: 18,),

              ],
            ),
          ),

          ///product img
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/$img',width: imgWidth,height: imgHeight,),
          ),


          Column(
            children: [
          ///product name
          Padding(
            padding:   EdgeInsets.only(right: 14.0,top: 4,bottom: 4),
            child: Text( productName!,style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'SST Arabic')),
          ),


          /// num of items at store
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: RichText(
              text: TextSpan(
                  style:   TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'SST Arabic'),
                  children: [
                    TextSpan(text:'الكمية بالمخزن :  '),
                    TextSpan(text:'$numOfProductInStore', style: TextStyle(color: AppColors.selectedTab,fontSize: 13,fontFamily: 'SST Arabic',fontWeight: FontWeight.bold)),
                  ]
              ),
            ),
          ),

          /// add to cart & item price
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /// add to cart


                Text('ريال',style:TextStyle(color: AppColors.kcaTextColor,fontSize: 12,fontFamily: 'SST Arabic'),),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0,right: 12),
                  child: Text('$price',style:TextStyle(color: AppColors.selectedTab,fontSize: 15,fontFamily: 'SST Arabic',fontWeight: FontWeight.bold) ,),
                ),
                InkWell(
                    onTap: onPressed,
                    child: Image.asset('assets/images/plus.png',width: 28,height: 28,)),
              ],
            ),
          )
            ],
          )



        ],
      ),
    );
  }
}
