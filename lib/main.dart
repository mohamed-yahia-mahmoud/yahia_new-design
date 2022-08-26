import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yahia_new_task/ui/home_page/view/Home.dart';

void main() async {
  // Add this line
  await ScreenUtil.ensureScreenSize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return  //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
     ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: Home(),
      );
    }
    );
  }
}

