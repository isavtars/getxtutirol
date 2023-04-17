import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

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
              " RegisterScreen",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //dynamic url Links
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 36, 17, 58),
                    minimumSize: const Size(70, 45)),
                onPressed: () async {
                  Get.back();
                },
                child: const Text("go to mainscreen")),
            const SizedBox(
              height: 10,
            ),
            Text("${Get.parameters['channel']}"),
            const SizedBox(
              height: 10,
            ),
            Text("${Get.parameters['content']}"),
          ],
        ),
      ),
    ));
  }
}
