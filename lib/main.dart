import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx tutirol',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPage(),
    );
  }
}

// GetX Bonus Features

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                child: Text(
                  " GetX Bonus Features",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 115, 9, 214),
                              minimumSize: Size(70, 45)),
                          onPressed: () {
                            Get.defaultDialog(
                              radius: 10.0,
                              contentPadding: const EdgeInsets.all(20.0),
                              title: 'title',
                              middleText: 'content',
                              textConfirm: 'Okay',
                              confirm: OutlinedButton.icon(
                                onPressed: () => Get.back(),
                                icon: const Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                ),
                                label: const Text(
                                  'Okay',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              cancel: OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.tap_and_play),
                                label: Text('label'),
                              ),
                            );
                          },
                          child: const Text('dailogBox')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 73, 156, 105),
                              minimumSize: Size(70, 45)),
                          onPressed: () {
                            Get.bottomSheet(
                              Container(
                                height: 850,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    'Count has reached ',
                                    style: const TextStyle(
                                        fontSize: 28.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: const Text('dailogBox')),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 26, 155, 144),
                        minimumSize: Size(130, 45)),
                    onPressed: () {
                      Get.snackbar(
                        "this is snackbar",
                        "we cant able to snack bar in this time",
                        snackPosition: SnackPosition.BOTTOM,
                        titleText: const Text(
                          "heloo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                      );
                    },
                    child: Expanded(
                      child: const Text('snackbar'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
