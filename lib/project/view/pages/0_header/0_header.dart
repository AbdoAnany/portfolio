


import 'package:anany_me/project/view/pages/0_header/widget/header_button.dart';
import 'package:flutter/material.dart';

import '../../../../animations/entranceFader.dart';
import '../../../../core/const/AppColor.dart';
import '../../../../core/widget/navBarLogo.dart';
import '../../../controller/home_bloc.dart';


class HeaderAppBar extends StatelessWidget with PreferredSizeWidget{
   HeaderAppBar({Key? key}) : super(key: key);
   @override

   Size get preferredSize => Size(0,50);
  @override
  Widget build(BuildContext context) {
    final homeCubit = HomeCubit.get(context);

    return AppBar(
      leading: NavBarLogo(),
      leadingWidth: 200,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
          color: homeCubit.lightTheme ? Colors.black : Colors.white),
      elevation: 0,
  
          actions: [
      for (int i = 0; i < HomeCubit.sectionsName.length; i++)
    ButtonActions(text:HomeCubit.sectionsName[i], icon:  HomeCubit.sectionsIcons[i],),
      EntranceFader(
        offset: Offset(0, -10),
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 250),
        child: Container(
          height: 60.0,
          width: 120.0,
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            hoverColor:AppColor. primaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: AppColor.primaryColor)),
            onPressed: () {
             // html.window.open(urlCv, "pdf");
            },
            child: Text(
              "RESUME",
              // style: GoogleFonts.notoSerif(
              //   color: homeCubit.lightTheme ? Colors.black : Colors.white,
              //   fontWeight: FontWeight.w300,
              // ),
            ),
          ),
        ),
      ),
    //   const SizedBox(width: 15.0),
    //   MaterialButton(
    //     color: !homeCubit.lightTheme ? Colors.black : Colors.white,
    //     elevation: 0,
    //     onPressed: () async {
    // homeCubit.lightTheme = !homeCubit.lightTheme;
    //       // if( _controller.isCompleted)
    //       //   _controller.reverse().orCancel;
    //       //  if( _controller.isDismissed)
    //       //    _controller.forward().orCancel;
    //     },
    //     child:
    //     //  Lottie.network(
    //     //   'https://assets4.lottiefiles.com/packages/lf20_dmdxpg2l.json',
    //     //   controller: _controller,animate: true,repeat: true,reverse: true,
    //     //
    //     //      onLoaded: (c){
    //     //        setState(() {
    //     //          if( homeCubit.lightTheme )
    //     //            _controller.reverse();
    //     //          if( !homeCubit.lightTheme )
    //     //            _controller.forward();
    //     //        });
    //     //
    //     //      }
    //     // )
    //
    //     Switch(
    //       inactiveTrackColor: Colors.grey,
    //       value: !homeCubit.lightTheme,
    //       onChanged: (value) {
    //         homeCubit.lightTheme = !value;
    //       },
    //       activeColor:AppColor. kPrimaryColor,
    //     ),
    //   ),
    //   const SizedBox(width: 15.0),
   ],
    );
  }


}
