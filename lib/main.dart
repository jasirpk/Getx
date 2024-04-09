import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/alert_dialog.dart';
import 'package:sample/bottom_sheet.dart';
import 'package:sample/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.purple),
      ),
      title: 'GETX',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'GETX',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SnackBar_Screen(),
              AlertDialog_Screen(),
              BottomSheet_Screen(),
            ],
          ),
        ),
      ),
    );
  }
}
