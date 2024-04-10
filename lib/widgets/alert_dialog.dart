import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertDialog_Screen extends StatelessWidget {
  const AlertDialog_Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.defaultDialog(
          title: 'Dialog Title',
          titleStyle: TextStyle(fontSize: 25),
          middleText: 'This is middle text',
          middleTextStyle: TextStyle(fontSize: 20),
          // backgroundColor: Colors.blueAccent,
          radius: 30,
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Text(
                'Data Loading',
              ))
            ],
          ),
          textCancel: 'Cancel',
          cancelTextColor: Colors.blue,
          textConfirm: 'Confirm',
          onCancel: () {},
          onConfirm: () {},
          buttonColor: Colors.blue,
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Back'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Action 2'),
            ),
          ],
          barrierDismissible: true,
        );
      },
      child: Text(
        "Show Dialog",
      ),
    );
  }
}
