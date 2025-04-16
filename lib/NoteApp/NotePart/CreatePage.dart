import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practice_project/NoteApp/NotePart/FrontPage.dart';

class CreatePageDesign extends StatefulWidget {
  const CreatePageDesign({super.key});

  @override
  State<CreatePageDesign> createState() => _CreatePageDesignState();
}

class _CreatePageDesignState extends State<CreatePageDesign> {
  TextEditingController tittleController = TextEditingController();
  TextEditingController textController = TextEditingController();

  final mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Create new page"), centerTitle: true),
      body: Form(
        key: mykey,
        child: Column(
          children: [
            TextFormField(
              controller: tittleController,
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 15,
                ),
                hintText: "Title",
                hintStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              validator: (value) {
                if (value == null || value == "") {
                  return "Field can empty";
                }
                return null;
              },
            ),
            TextFormField(
              controller: textController,
              maxLines: 10,

              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 15,
                ),
                hintText: "Write something",
                hintStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              validator: (value) {
                if (value == null || value == "") {
                  return "Field can empty";
                }
                return null;
              },
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if(mykey.currentState!.validate()){
          //   return;
          // }
          log("====dddf=${noteList.length}====");
          Map<String, dynamic> notedata = {
            "create_at": DateTime.now(),
            "tittle": tittleController.text,
            "text": textController.text,
          };

          noteList.add(notedata);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FrontpageDesign()),
          );
          setState(() {});
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
