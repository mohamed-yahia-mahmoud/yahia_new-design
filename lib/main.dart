import 'package:flutter/material.dart';
import 'package:yahia_new_task/ui/home_page/view/Home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Home(),
    );
  }
}

