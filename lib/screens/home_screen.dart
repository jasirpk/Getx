import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Home Screen',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Next Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'This is from Home Screen');
              },
              child: Text('Back to Main'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${Get.arguments}",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
