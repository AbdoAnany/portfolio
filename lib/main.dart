import 'package:anany_me/project/controller/home_bloc.dart';
import 'package:anany_me/project/view/pages/1_home/pages/home/home_page.dart';
import 'package:anany_me/project/view/pages/1_home/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layout/layout.dart';

import 'core/const/AppString.dart';
import 'core/const/AppTheme.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HomeCubit themeProvider = HomeCubit();

  // void getCurrentAppTheme() async {
  //   themeProvider.lightTheme = await HomeCubit.darkThemePref.getTheme();
  // }

  @override
  void initState() {
    // getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child:


      Layout(
        child: MaterialApp(
          title: AppString.APP_TITLE,
          theme: AppTheme.lightThemeData,
          debugShowCheckedModeBanner: false,
          initialRoute: HomePage.homePageRoute,
          onGenerateRoute: RouteConfiguration.onGenerateRoute,
        ),
      )
      // MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: 'Abdelrahman Anany',
      //   theme:         ThemeData(useMaterial3: true,
      //     primarySwatch: Colors.deepPurple,
      //     primaryColorLight:AppColor. kPrimaryColor,
      //     brightness: Brightness.light,
      //     primaryColor:AppColor. kPrimaryColor,
      //     accentColor: Colors.black,
      //     highlightColor: Colors.black,
      //     textTheme: TextTheme(
      //       headline1: TextStyle(
      //         overflow: TextOverflow.ellipsis,
      //       ),
      //     ),
      //   //  canvasColor: Colors.white,
      //   ),
      //   initialRoute: "/",
      //   routes: {
      //     "/": (context) => MasterScreen(),
      //   //  "/workTogether": (context) => GetInTouch(),
      //   //  "/details": (context) => ServiceDetails()
      //   },
      // ),
    );
  }
}
