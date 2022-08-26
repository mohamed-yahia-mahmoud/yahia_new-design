import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home_page/widgets/card_item.dart';
import '../controller/home_screen_controller.dart';

class MyGridView extends StatelessWidget {
    MyGridView({Key? key}) : super(key: key);
    var controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GridView.builder(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: (.4/.6),crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
          padding: const EdgeInsets.only(bottom:10,left: 15,right: 15),
          itemCount: controller.items.length,
          itemBuilder: (BuildContext context, int index) {
            return CarDItem(controller.items[index].kcalNum, controller.items[index].img,
                controller.items[index].imgWidth, controller.items[index].imgHeight,
                controller.items[index].productName, controller.items[index].numOfProductInStore, controller.items[index].price,
                    (){
                  controller.visibleBasket.value=!controller.visibleBasket.value;
                }
            );
          }
      ),
    );
  }
}
