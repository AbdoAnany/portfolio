
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../project/controller/home_bloc.dart';


class NavBarLogo extends StatelessWidget {
   double? height;
  NavBarLogo({this.height});
  @override
  Widget build(BuildContext context) {
    final themeProvider =HomeCubit.get(context);
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        "Anany",
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        maxLines: 1,
        // style: GoogleFonts.arizonia(
        //   //  color: themeProvider.lightTheme ? kPrimaryColor2 : kPrimaryColor,
        //     letterSpacing: 2,
        //     fontSize: 35),
      ),
    );
  }
}
