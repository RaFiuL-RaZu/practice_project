
import 'dart:developer';

import 'package:get/get.dart';
import 'package:practice_project/ServiceFile/ServiceApi.dart' show ServiceApi;

class ServiceController extends GetxController{

  RxList<dynamic> ServiceList=[].obs;

  // getServiceFun()async{
  //   await Future.delayed(Duration(seconds: 5));
  //   ServiceList.value=dummyServiceLIst;
  // }
  getApiFun()async{
    var decodedData=await ServiceApi().getApiData();
    for(var i in decodedData["service_data"]){
      ServiceList.add({'title': i['title'], 'description':i['description'],'image':i['image'],'icon':i['icon']});
    }


  }



  // List dummyServiceLIst=[
  //   {
  //     "title":'RaFiuL Razu',
  //     "description":'A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. ',
  //     "profile":'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
  //     "cover":'https://images.template.net/wp-content/uploads/2015/04/Awesome-Free-Facebook-Cover-Backgrounds.jpg',
  //
  //   },
  //   {
  //     "title":'RaFiuL',
  //     "description":'A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. ',
  //     "profile":'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
  //     "cover":'https://marketplace.canva.com/EAFvvOPc5Y8/1/0/800w/canva-blue-and-white-sky-animation-simple-dream-quote-facebook-cover-pPiGHZ3vmOg.jpg',
  //
  //   },
  //   {
  //     "title":'Mamun',
  //     "description":'A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. ',
  //     "profile":'https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg=',
  //     "cover":'https://img.freepik.com/free-vector/simple-aesthetic-text-twitter-header-template_23-2149341360.jpg?semt=ais_hybrid&w=740',
  //
  //   },
  //   {
  //     "title":'Imran',
  //     "description":'A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. ',
  //     "profile":'https://t4.ftcdn.net/jpg/08/04/36/29/360_F_804362990_0n7bGLz9clMBi5ajG52k8OAUQTneMbj4.jpg',
  //     "cover":'https://timelinecovers.pro/facebook-cover/download/life-facebook-cover.jpg',
  //
  //   },
  //   {
  //     "title":'Aysha Siddika',
  //     "description":'A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. ',
  //     "profile":'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ=',
  //     "cover":'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTA0L210MzY3N2EtMjEwMzI0LWZyZWVzdHlsZTEtY20tMDAxLWJsb2diYW5uZXIuanBn.jpg',
  //
  //   },
  //
  //
  // ];

  // @override
  // void onInit() {
  //   super.onInit();
  // }

}