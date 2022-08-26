import 'package:flutter/material.dart';

import '../../../../shared/app_colors.dart';

class Header extends StatelessWidget {
    Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const  BoxDecoration(
        gradient:    LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.beginColor, AppColors.endColor],
        ),
      ),
      child: Column(
        children: [
          /// notification and appName
          Padding(
            padding: const EdgeInsets.only(top:50.0,left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/bell.png',width: 22,height: 25,),
                Expanded(child: Image.asset('assets/icons/Maqsafi Final logo-03.png',width: 78,height: 29,)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:31.0,left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                /// not registered
                Image.asset('assets/icons/Not registered.png',width: 56,height: 56,),

                /// search by num
                Image.asset('assets/icons/search by number.png',width: 56,height: 56,),

                /// search btn
                SizedBox(
                  width: 205,
                  height: 56,
                  child:
                  TextField(
                    textAlign: TextAlign.right,
                    //controller: searchCtrl,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'اسم الطالب',
                        hintStyle: const TextStyle(fontSize: 16,color: AppColors.hintTextColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        contentPadding: const EdgeInsets.all(16),
                        fillColor: Colors.white.withOpacity(.9),
                        prefixIcon:const Icon(Icons.search,color: AppColors.searchColor,)
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
