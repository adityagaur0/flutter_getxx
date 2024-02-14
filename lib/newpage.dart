import 'package:flutter/material.dart';
import 'package:flutter_getxx/Controllers/tapController.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: const Color(0xFF89dad0),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            controller.x.toString(),
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
