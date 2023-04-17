import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutirol/Getx/counterobx.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyCounterobx mycoun = Get.put(MyCounterobx());
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("LoginScreen"),
           
            Obx(()=> Text("${mycoun.count}"),),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 180, 156),
                    minimumSize: const Size(70, 45)),
                onPressed: () async {
                  mycoun.iincrements();
                },
                child: const Text("Go back")),
          ],
        ),
      ),
    ));
  }
}
