import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutirol/utils/route.dart';

import 'Screen/error.dart';
import 'Screen/home_screen.dart';
import 'Screen/login.dart';
import 'Screen/register.dart';

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
      //getx routes

      getPages: [
        GetPage(name: Routes.screen1, page: () => const HomeScreen()),
        GetPage(name: Routes.screen2, page: () => const LoginScreen()),
        GetPage(
            name: "/register",
            page: () => const RegisterScreen(),
            transition: Transition.upToDown),
      ],
      unknownRoute:
          GetPage(name: Routes.notFound, page: () => const ErrorScreen()),
      defaultTransition: Transition.cupertinoDialog,

      home: const MyPage(),
    );
  }
}

//GetxDynamic routes mangements

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
              const Text(
                "GetxDynamic routes mangements",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 0, 180, 156),
                          minimumSize: const Size(70, 45)),
                      onPressed: () async {
                        Get.toNamed(Routes.screen1);
                      },
                      child: const Text("Go to home")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 0, 180, 156),
                          minimumSize: const Size(70, 45)),
                      onPressed: () async {
                        Get.toNamed(Routes.screen1);
                      },
                      child: const Text("Go to login")),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 47, 54, 53),
                      minimumSize: const Size(70, 45)),
                  onPressed: () async {
                    Get.toNamed("/helooosdsfdf");
                  },
                  child: const Text("Go to unKnownRoute")),
              const SizedBox(
                height: 10,
              ),
              //dynamic url Links
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 36, 17, 58),
                      minimumSize: const Size(70, 45)),
                  onPressed: () async {
                    Get.toNamed(
                        "/register?channel=It Garage&content=Flutter developer");
                  },
                  child: const Text("dynamicurlLinks")),
            ]),
      )),
    );
  }
}
