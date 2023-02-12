import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitState());

  // static   ThemePreference darkThemePref = ThemePreference();
//  ScrollController scrollController = ScrollController();

  static var masterScaffoldKey=GlobalKey<ScaffoldState>();
  static HomeCubit get(context) => BlocProvider.of(context);
  int? currentIndex;
  update(){emit(HomeState1());}


//HomeCubit themeProviders = HomeCubit();
  bool? isPressed = false;
  AnimationController? animationController;
  Animation? animation;
  bool? isScrollingDown = false;
  AnimationController? controller;

  static List<String> sectionsName = [
    "HOME",
    "ABOUT",
    "SERVICES",
    "PROJECTS",
    "CONTACT"
  ];

  static List<IconData> sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.article,
    Icons.phone,
  ];

  void scroll() {
    // scrollController.animateTo(
    //   currentIndex == 0
    //       ? 0.0
    //       : currentIndex == 1
    //       ? MediaQuery.of(masterScaffoldKey.currentContext).size.height * 1.05
    //       : currentIndex == 2
    //       ? MediaQuery.of(masterScaffoldKey.currentContext).size.height * 1.98
    //       : currentIndex == 3
    //       ? MediaQuery.of(masterScaffoldKey.currentContext).size.height * 2.9
    //       : MediaQuery.of(masterScaffoldKey.currentContext).size.height * 4,
    //   duration: Duration(seconds: 1),
    //   curve: Curves.easeInOut,
    // );
    update();
  }




  // App Theme
  bool _lightTheme = false;
  bool get lightTheme => _lightTheme;

  set lightTheme(bool value) {
    _lightTheme = value;
//    darkThemePref.setDarkTheme(value);

    update();
  }


}


abstract class HomeState{}
class HomeInitState extends HomeState{}
class HomeState1 extends HomeState{}