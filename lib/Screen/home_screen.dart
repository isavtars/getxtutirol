import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

//Getback
//passing Data BackWards Through The Navigations stack

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.screenTitle,
  }) : super(key: key);

  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'This is $screenTitle Screen',
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 180, 156),
                    minimumSize: const Size(70, 45)),
                onPressed: () {
                  Get.back(result: "to mainscreen from home screen");
                },
                child: const Text("Get back")),
            const SizedBox(
              height: 10,
            ),
            Text("${Get.arguments}")
          ],
        ),
      ),
    ));
  }
}
