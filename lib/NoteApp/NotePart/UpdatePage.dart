import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practice_project/NoteApp/NotePart/FrontPage.dart';

class EditScren extends StatefulWidget {
  const EditScren({
    super.key,
    required this.tittle,
    required this.text,
    required this.create_at,
    required this.index,
  });
  final DateTime create_at;
  final String tittle;
  final String text;
  final int index;

  @override
  State<EditScren> createState() => EditScrenState();
}

class EditScrenState extends State<EditScren> {
  TextEditingController tittleController = TextEditingController();
  TextEditingController textController = TextEditingController();

  final mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    tittleController.text = widget.tittle;
    textController.text = widget.text;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Update your page"), centerTitle: true),
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
          Map<String, dynamic> noteup = {
            "create_at": DateTime.now(),
            "tittle": tittleController.text,
            "text": textController.text,
          };
          noteList.replaceRange(widget.index - 1, widget.index, [noteup]);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => FrontpageDesign()),
          );
          setState(() {});
        },
        child: Icon(Icons.update),
      ),
    );
  }
}
