import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:yahia_new_task/ui/bottom_bar_screens/homeScreen/widgets/Body.dart';
import 'package:yahia_new_task/ui/bottom_bar_screens/homeScreen/widgets/Header.dart';
import '../controller/home_screen_controller.dart';


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller)=> Scaffold(
        body: Stack(
          children: [
            Header(),
            Body(),

          ]
        )
      ),
    ) ;
  }
}
