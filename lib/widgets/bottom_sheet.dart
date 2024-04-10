import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheet_Screen extends StatelessWidget {
  const BottomSheet_Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.bottomSheet(
          Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.wb_sunny_outlined),
                  title: Text('Light Theme'),
                  onTap: () => {Get.changeTheme(ThemeData.light())},
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny_outlined),
                  title: Text('Dark Theme'),
                  onTap: () => {Get.changeTheme(ThemeData.dark())},
                ),
              ],
            ),
          ),
          // barrierColor: Colors.greenAccent.shade100,
          backgroundColor: Colors.orange,
          isDismissible: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black, style: BorderStyle.solid)),
          enableDrag: true,
        );
      },
      child: Text('Bottom sheet'),
    );
  }
}
