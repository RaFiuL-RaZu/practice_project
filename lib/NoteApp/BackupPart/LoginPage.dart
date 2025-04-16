import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practice_project/NoteApp/BackupPart/Registration.dart';
import 'package:practice_project/NoteApp/BackupPart/SucccessPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  final mykey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5E5D5),
      body: SingleChildScrollView(
        child: Form(
          key: mykey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Center(
                child: Text(
                  "Welcome back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login to your account",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(height: 50),
                    TextFormField(
                      controller: mailController,
                      cursorColor: Colors.black,
                      cursorHeight: 16,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      validator: (value){
                      if(value == null || value == ""){
                        return "Field can empty";
                      } else if(value != "rafi102621@gmail.com"){
                        return "Wrong mail found";
                      }
                      return null;
                      },
                    ),
                    SizedBox(height: 50),
                    TextFormField(
                      controller: passController,
                      cursorColor: Colors.black,
                      cursorHeight: 16,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      validator: (value){
                        if(value == null || value ==""){
                          return "Field can empty";
                        }else if(value !="rafi102621"){
                          return "wrong password";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgotten password?",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: InkWell(
                        onTap: (){
                         if(mailController.text == "rafi102621@gmail.com" || passController.text =="rafi102621"){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Succcesspage()));
                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login successfully")));
                         }
                         else{
                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid mail or password")));
                         }
                        },
                        child: SizedBox(
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff205781),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 50,
                              width: 150,
                              child:Center(
                                child: Text("Log in",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account?",style: TextStyle(color: Colors.black,fontSize:16),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                        }, child:Text("Sign up",style: TextStyle(color: Colors.blue,fontSize:16),))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
