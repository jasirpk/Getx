import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBar_Screen extends StatelessWidget {
  const SnackBar_Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.snackbar(
            "Instence of Getex", "This is snack bar message",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.black,
            borderRadius: 30,
            margin: EdgeInsets.all(10),
            animationDuration: Duration(milliseconds: 800),
            backgroundGradient: LinearGradient(colors: [
              Colors.blue,
              Colors.purple,
            ]),
            borderWidth: 4,
            borderColor: Colors.amber,
            boxShadows: [
              BoxShadow(
                  color: Colors.purple,
                  offset: Offset(30, 30),
                  spreadRadius: 20,
                  blurRadius: 8)
            ],
            isDismissible: true,
            dismissDirection: DismissDirection.horizontal,
            forwardAnimationCurve: Curves.bounceInOut,
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
            shouldIconPulse: false,
            leftBarIndicatorColor: Colors.white,
            mainButton: TextButton(
              onPressed: () {
                print('Retry clicked');
              },
              child: Text(
                'Retry',
                style: TextStyle(color: Colors.white),
              ),
            ),
            padding: EdgeInsets.all(50),
            overlayBlur: 5,
            // showProgressIndicator: true,
            // progressIndicatorBackgroundColor: Colors.orange,
            // progressIndicatorValueColor:
            //     AlwaysStoppedAnimation<Color>(Colors.white),
            reverseAnimationCurve: Curves.bounceInOut,
            snackbarStatus: (val) {
              print(val);
            },
            // userInputForm: Form(
            //     child: Row(
            //   children: [Expanded(child: TextField())],
            // )),
            // overlayColor: Colors.grey

            // duration: Duration(microseconds: 8000),
            // maxWidth: 10,
          );
        },
        child: Text('show SnackBar '));
  }
}
