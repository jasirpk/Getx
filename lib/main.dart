import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screens/home_screen.dart';
import 'package:sample/widgets/alert_dialog.dart';
import 'package:sample/widgets/bottom_sheet.dart';
import 'package:sample/widgets/snackbar.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SnackBar_Screen(),
              AlertDialog_Screen(),
              BottomSheet_Screen(),
              ElevatedButton(
                  onPressed: () async {
                    var data = await Get.to(
                      Home_Screen(),
                      arguments: "Data from Main",
                      fullscreenDialog: true,
                      transition: Transition.zoom,
                      duration: Duration(milliseconds: 900),
                      // curve: Curves.bounceInOut,
                    );
                    print("The recieved data is $data");
                    // This will not return..!
                    // Get.off(Home_Screen());

                    // Go to Home and removing all previous screens...!
                    // Get.offAll(Home_Screen());
                  },
                  child: Text('Go to Next Screen')),
            ],
          ),
        ),
      ),
    );
  }
}
