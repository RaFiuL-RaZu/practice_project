import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practice_project/ServiceFile/ServiceApi.dart';
import 'package:practice_project/ServiceFile/ServiceCard.dart';
import 'package:get/get.dart';
import 'package:practice_project/ServiceFile/ServiceController.dart';

class Serviceshow extends StatelessWidget {
  const Serviceshow({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceController controller = Get.put(ServiceController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Show Service"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: ()async{
          controller.getApiFun();

          }, icon:Icon(Icons.refresh))
        ],
      ),
      body: Column(
        children: [
          Obx(()=>_buildPadding(count: controller.ServiceList.length),),
          Expanded(
            child: Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: controller.ServiceList.length,
                itemBuilder: (context, index) {
                  return Servicecard(
                    title: controller.ServiceList[index]['title'],
                    description: controller.ServiceList[index]['description'],
                   profile:"https://flutter-batch3.advocate-portfolio.classicitltd.com/${controller.ServiceList[index]['icon']}",
                   cover:"https://flutter-batch3.advocate-portfolio.classicitltd.com/${controller.ServiceList[index]['image']}",
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildPadding({required int count}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: 'ServiceList', fontsize: 22),
          CustomText(text: '${count}', fontsize: 20),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.fontsize});
  final String text;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}",
      style: TextStyle(fontSize: fontsize, fontWeight: FontWeight.w500),
    );
  }
}
