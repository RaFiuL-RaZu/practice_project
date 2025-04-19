
import 'package:flutter/material.dart';
import 'package:practice_project/ServiceFile/ServiceShow.dart';

class Servicecard extends StatelessWidget {
  const Servicecard({super.key, required this.title, required this.description, required this.profile, required this.cover});
  final String title;
  final String description;
  final String profile;
  final String cover;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(clipBehavior: Clip.none,
            children: [
              Container(
                child: Image(image: NetworkImage(cover),fit: BoxFit.fill,),
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                bottom: -45,
                left: 10,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage:NetworkImage(profile),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: title, fontsize: 22,),
                CustomText(text: description, fontsize: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
