
import 'dart:convert';
import 'dart:developer';

import 'package:alfarooq_association/Core/NetworkController/network_controller.dart';
import 'package:alfarooq_association/Core/exception.dart';
import 'package:alfarooq_association/Core/prefs.dart';
import 'package:alfarooq_association/Core/url_component.dart';
import 'package:alfarooq_association/Model/Profile/profile_model.dart';
import 'package:alfarooq_association/main.dart';
import 'package:flutter/material.dart';




class ProfileController extends ChangeNotifier {
  NetworkController fetchInfo = NetworkController();
  ProfileModel profileModel = ProfileModel();

  void getUserInfo(Function onSucess)async {
   String? token;
    token = prefs!.getString('token');

  fetchInfo.myhttpClientPost(
    baseUrl,
  "ShowProfileController.php",
  HttpMethod.Post,
  headers: {'Authorization': 'Bearer $token'},
  ).then((value) {
    log("message");
    if(value!.body.isEmpty){
          log("message2");
      throw CustomExeption(errorDescreption: "is Empty", statusCode: -1);
    }
    else{
          log("message3");
   profileModel=ProfileModel.fromJson(json.decode(value.body));
    if(profileModel.status==200){
     onSucess();

    }
    }
    
  });

    notifyListeners();
  }
  
}


