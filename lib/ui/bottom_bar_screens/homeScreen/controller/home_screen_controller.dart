import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../network/models/ProductModel.dart';
 //=========================================================================================

//                         By Mohamed Yahia. Mahmoud

//=========================================================================================
class HomeScreenController extends GetxController with GetTickerProviderStateMixin {

  int? selectedPage;
  var pageController = PageController().obs;

  List<ProductModel> items=
  [    ProductModel(kcalNum: 200,img: 'jucie.png',imgHeight: 106.h,imgWidth: 47.w,productName: 'عصير تفاح 250مل',price: 14,numOfProductInStore: 44),
    ProductModel(kcalNum: 200,img: 'lays.png',imgHeight: 106.h,imgWidth: 79.w,productName: 'ليز',price: 26,numOfProductInStore: 13),
    ProductModel(kcalNum: 200,img: 'chcocolate-sandwich-cookies-filled.png',imgHeight: 106.h,imgWidth: 91.w,productName: 'بسكويت اوريو',price: 25,numOfProductInStore: 22),
    ProductModel(kcalNum: 200,img: 'mms-choc-cookie-sandwich.png',imgHeight: 106.h,imgWidth: 128.w,productName: 'ساندوتش ام ام',price: 78,numOfProductInStore: 65),
    ProductModel(kcalNum: 200,img: 'breakfast-sandwich.png',imgHeight: 106.h,imgWidth: 122.w,productName: 'وجبه افطار',price: 66,numOfProductInStore: 37),
    ProductModel(kcalNum: 200,img: 'ice-cream-cone-without.png',imgHeight: 106.h,imgWidth: 46.w,productName: 'كيمو كونو',price: 33,numOfProductInStore: 68),

  ];




  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
  }


  void changePage(int pageNum){
    selectedPage=pageNum;
    update();
    //nav to next page
  }



}