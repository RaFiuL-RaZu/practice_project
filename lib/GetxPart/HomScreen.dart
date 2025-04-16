// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:practice_project/GetxPart/ControllerPart.dart';
//
// class HomeScreen extends StatelessWidget {
//    HomeScreen({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     HomeController controller=Get.put(HomeController());
//     log("======${controller.count}");
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text("Getx Widget ${controller.number}"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text("Count this number:"),
//             Obx(()=>Text("${controller.number}"))
//           ]
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed:controller.incremeentCounter,
//         child: Text("Tap"),
//         backgroundColor: Colors.teal,
//       ),
//     );
//   }
// }
