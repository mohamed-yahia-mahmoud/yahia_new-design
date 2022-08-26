import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yahia_new_task/shared/app_colors.dart';

class BasketItem extends StatelessWidget{
  final int? numOfItem;
  final VoidCallback? onPressed;
  final String? img;
  BasketItem({Key? key, this.numOfItem,this.onPressed, this.img,}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 62.h ,
                width: 62.w ,
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(10.0,),
                  border: Border.all(color: AppColors.borderColor,width: 1)
                ),
                child: Image.asset('assets/images/$img.png',width: 50.w,height: 33.h,),
            ),
          ),


          Positioned(left: 19.w,top: 0,
            child: Container(
              width: 23.w,
              height: 23.h,
              decoration: const BoxDecoration(
                  color: AppColors.endColor,
                  shape: BoxShape.circle
              ),
              child:   Center(child: Text('$numOfItem',style: TextStyle(color: Colors.white,fontSize: 13,fontFamily: 'SST Arabic'),),),
            ),),

          Positioned(left: 0,top: -0,
            child: Container(
              width: 23.w,
              height: 23.h,
              decoration: const BoxDecoration(
                  color: AppColors.binBgrColor,
                  shape: BoxShape.circle
              ),
              child: Center(child: Image.asset('assets/icons/bin.png',width: 8.82.w,height: 12.26.h,)),
            ),),

        ],
      ),
    );
  }
}