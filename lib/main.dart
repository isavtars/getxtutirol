import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screen/home_screen.dart';

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

// RouteMangements simple
//Getx Navigations and Routes Managements

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Getx Navigations and Routes Managements",
            style: TextStyle(
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
              onPressed: () async {
                var data = await Get.to(
                    const HomeScreen(
                      screenTitle: "home",
                    ),
                    arguments: "heloo from supper class",
                    transition: Transition.size);
                print(data);
              },
              child: const Text("Go to home")),
        ],
      ),
    ));
  }
}

// Get.to()                =====         	          Navigator.push()
// Get.toNamed()	         ====                     Navigator.pushNamed()
// Get.back()              =====         	          Navigator.pop(context)
// Get.off()               =====                    Navigator.pushReplacement()
// Get.offNamed()              =====         	      Navigator.pushReplacementNamed()
// Get.offUntil()              =====         	      Navigator.pushAndRemoveUntil()
// Get.offNamedUntil()              =====         	Navigator.pushNamedAndRemoveUntil()
// Get.offAndToNamed()              =====         	Navigator.popAndPushNamed()
// Get.removeRoute()              =====         	  Navigator.removeRoutes()
// Get.offAllNamed()              =====         	  Navigator.pushNamedAndRemoveUntil()
// Get.close()              =====         	        Navigator.popUntil()
