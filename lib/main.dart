import 'package:Getx/screens/home_screen.dart';
import 'package:Getx/widgets/alert_dialog.dart';
import 'package:Getx/widgets/bottom_sheet.dart';
import 'package:Getx/widgets/named_route.dart';
import 'package:Getx/widgets/navigate_route.dart';
import 'package:Getx/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(
            name: '/home',
            page: () => Home_Screen(),
            transition: Transition.leftToRight)
      ],
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.purple),
      ),
      title: 'GETX',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'State Management - GETX',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SnackBar_Screen(),
              AlertDialog_Screen(),
              BottomSheet_Screen(),
              Navigate_Route_Screen(),
              NamedRoute_Screen(),
            ],
          ),
        ),
      ),
    );
  }
}
