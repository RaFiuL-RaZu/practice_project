
import 'package:flutter/material.dart';
import 'package:practice_project/GetxPart/HomScreen.dart';
import 'package:practice_project/NoteApp/BackupPart/LoginPage.dart';
import 'package:practice_project/NoteApp/BackupPart/Registration.dart';
import 'package:practice_project/NoteApp/BackupPart/SucccessPage.dart';
import 'package:practice_project/NoteApp/NotePart/FrontPage.dart';
import 'package:practice_project/NoteApp/SpashScren.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:HomeScreen(),
    );
  }
  
}