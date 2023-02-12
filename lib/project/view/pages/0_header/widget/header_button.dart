



import 'package:anany_me/core/const/AppColor.dart';
import 'package:flutter/material.dart';

import '../../../../../animations/entranceFader.dart';
import '../../../../controller/home_bloc.dart';


class ButtonActions extends StatelessWidget {
   ButtonActions ({Key? key,this.text,this.icon}) : super(key: key);
 String? text;
   IconData? icon;
  @override
  Widget build(BuildContext context) {
    final homeCubit = HomeCubit.get(context);

    return MediaQuery.of(context).size.width > 760
      ? EntranceFader(
    offset: Offset(0, -10),
    delay: Duration(milliseconds: 100),
    duration: Duration(milliseconds: 250),
    child: Container(
      padding: const EdgeInsets.all(8.0),
      height: 60.0,
      child: MaterialButton(
        hoverColor:AppColor. primaryColor,
        onPressed: () =>homeCubit. scroll(),
        child: Text(
          text!,
          style: TextStyle(
            color:
           Colors.black
          ),
        ),
      ),
    ),
  )
      : Padding(
    padding: const EdgeInsets.all(8.0),
    child: MaterialButton(
      hoverColor:AppColor. primaryColor.withAlpha(70),
      onPressed: () {
        homeCubit.   scroll();
        Navigator.pop(context);
      },
      child: ListTile(
        leading: Icon(
          icon,
          color: AppColor.primaryColor,
        ),
        title: Text(text!,
            style: TextStyle(
              color: homeCubit.lightTheme
                  ? Colors.black
                  : Colors.white,
            )),
      ),
    ),
  );
  }
}
