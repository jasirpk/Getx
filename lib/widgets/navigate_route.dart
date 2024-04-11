import 'package:Getx/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigate_Route_Screen extends StatelessWidget {
  const Navigate_Route_Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        child: Text('Go to Next Screen'));
  }
}
