
import 'package:flutter/material.dart';

class Succcesspage extends StatefulWidget {
  const Succcesspage({super.key});

  @override
  State<Succcesspage> createState() => _SucccesspageState();
}

class _SucccesspageState extends State<Succcesspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5E5D5),
      body:Column(
        children: [
          Center(
           child: Column(
             children: [
               SizedBox(height: 250,),
               Icon(Icons.check,size: 50,weight: 40,color:Colors.blueAccent,),
               Text("Your sign up was succesfully",style: TextStyle(color: Colors.black,fontSize: 15),),
               SizedBox(height: 50,),
               TextButton(onPressed: (){}, child:Text("Continue to Home",style: TextStyle(color: Colors.blueAccent,fontSize: 18),)),
             ],
           ), 
          )
        ],
      )
    );
  }
}
