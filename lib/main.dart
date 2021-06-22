import 'package:flutter/material.dart';
import 'package:tutorial/home.dart';
// ignore: unused_import
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tutorial/pages/test_dashboard.dart';
import 'package:tutorial/quizpage.dart';
import 'package:tutorial/utils/routes.dart';
import 'package:tutorial/widgets/themes.dart';
import 'signup.dart';
import 'splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  get mydata => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.SignupPage: (context) => SignupPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.TestDashboardPage: (context) => TestDashboardPage(),
        MyRoutes.splashscreen: (context) => splashscreen(),
        MyRoutes.homepage: (context) => homepage(),
      },
    );
  }
}
