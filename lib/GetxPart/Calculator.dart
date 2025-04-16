import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_project/GetxPart/ControllerPart.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            Obx(
              () => Text(
                "Your Result is = ${controller.result.value.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 30),
            Row(
              spacing: 20,
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.firstController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "First Number",
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: controller.secondController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Second Number",
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: controller.sumCalcultor,
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: controller.subCalcultor,
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: controller.mulCalcultor,
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: controller.divCalcultor,
                  child: Text("/"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
