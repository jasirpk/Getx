import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedRoute_Screen extends StatelessWidget {
  const NamedRoute_Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed("/home");
      },
      child: Text('Go to Home'),
    );
  }
}
