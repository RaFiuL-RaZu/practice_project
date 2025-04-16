
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  TextEditingController firstController =TextEditingController();
  TextEditingController secondController =TextEditingController();
  RxDouble result = 0.00.obs;

  sumCalcultor(){
    var a=double.parse(firstController.text);
    var b=double.parse(secondController.text);
    result.value=a+b;
  }
  subCalcultor(){
    var a=double.parse(firstController.text);
    var b=double.parse(secondController.text);
    result.value=a-b;
  }
  mulCalcultor(){
    var a=double.parse(firstController.text);
    var b=double.parse(secondController.text);
    result.value=a*b;
  }
  divCalcultor(){
    var a=double.parse(firstController.text);
    var b=double.parse(secondController.text);
    result.value=a/b;
  }
}