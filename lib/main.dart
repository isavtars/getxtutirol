import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Getx/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyCounter(),
    );
  }
}

// simpleCounter App

class MyCounter extends StatelessWidget {
  const MyCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            GetBuilder<CountController>(
                init: CountController(),
                builder: (countController) {
                  return Column(
                    children: [
                      Text("${countController.counts}"),
                      ElevatedButton(
                          onPressed: () {
                            countController.iincrements();
                          },
                          child: const Text("increments")),
                    ],
                  );
                })
          ],
        ),
      ),
    ));
  }
}
