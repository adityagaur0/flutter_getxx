

import 'package:flutter/material.dart';
import 'package:flutter_getxx/Controllers/listController.dart';
import 'package:flutter_getxx/Controllers/tapController.dart';
import 'package:flutter_getxx/newpage.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    ListController listController = Get.put(ListController());

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Container(
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
          GestureDetector(
            onTap: () {
              controller.increment();
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color(0xFF89dad0),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "increase",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.decrement();
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color(0xFF89dad0),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "decrease",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => NewPage());
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color(0xFF89dad0),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "new page",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              listController.setValues(controller.x.value);
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color(0xFF89dad0),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "Save Total",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
