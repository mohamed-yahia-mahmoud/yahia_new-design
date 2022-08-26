import 'package:flutter/material.dart';
import 'package:yahia_new_task/shared/app_colors.dart';

class BasketItem extends StatelessWidget{
  final String? text;
  final int? selectedPage;
  final int? pageNum;
  final VoidCallback? onPressed;
  final double? myWidth;
  final double? myHeight;
  final double? myFontSize;
  final String? img;
  final double? myImgWidth;
  final double? myImgHeight;
  BorderRadius? myBorderRadius;
  BasketItem({Key? key, this.text,this.selectedPage,this.pageNum,this.onPressed,this.myWidth,this.myHeight,this.myFontSize,this.img,
    this.myImgWidth,this.myImgHeight,this.myBorderRadius}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: myHeight ,
            width: myWidth ,
            decoration: BoxDecoration(
              color: selectedPage==pageNum?AppColors.selectedTab:Colors.white,
              borderRadius: myBorderRadius?? BorderRadius.circular(10.0,),
            ),
            child: img==null?Center(
              child: Text(text??"TapButton",style: myFontSize==null? TextStyle(color: selectedPage==pageNum?Colors.white:AppColors.selectedTab,fontSize: 15,fontFamily: 'SST Arabic')
                  :TextStyle(color: selectedPage==pageNum?Colors.white:AppColors.selectedTab,fontSize: myFontSize ,fontFamily: 'SST Arabic'),
              ),
            ):
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Padding(
               padding: const EdgeInsets.only(left:4.0),
               child: Text(text??"TapButton",style: myFontSize==null? TextStyle(color: selectedPage==pageNum?Colors.white:AppColors.selectedTab,fontSize: 15,fontFamily: 'SST Arabic')
                  :TextStyle(color: selectedPage==pageNum?Colors.white:AppColors.selectedTab,fontSize: myFontSize,fontFamily: 'SST Arabic'),
            ),
             ),
            Image.asset('assets/images/$img',width: myImgWidth,height: myImgHeight,),
          ],
        )
        ),
      ),
    );
  }
}