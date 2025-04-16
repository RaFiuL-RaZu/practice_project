import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Getx Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Count this number:"), Text("${count}")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          log("=====${count}======");
          setState(() {

          });
        },
        child: Text("Tap"),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
