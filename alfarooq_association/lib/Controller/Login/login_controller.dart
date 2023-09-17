
// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:alfarooq_association/Core/NetworkController/network_controller.dart';
import 'package:alfarooq_association/Core/exception.dart';
import 'package:alfarooq_association/Core/prefs.dart';
import 'package:alfarooq_association/Core/url_component.dart';
import 'package:alfarooq_association/Model/Login/login_model.dart';
import 'package:alfarooq_association/main.dart';
import 'package:flutter/material.dart';
String token2="";
class LoginController extends ChangeNotifier {
  NetworkController loginReq = NetworkController();
  LoginModel loginModel = LoginModel();

  void loginRequest(String email, String password, Function onSuccess) async {
    loginReq.myhttpClientPost(
      baseUrl,
      "LoginController.php",
      HttpMethod.Post,
      body: {
        "email": email,
        "password": password,
      },
    ).then((value) {
      if (value!.body.isEmpty) {
        throw CustomExeption( statusCode: -1, errorDescreption: "is Empty");
      } else {
        loginModel = LoginModel.fromJson(json.decode(value.body));
        if (loginModel.status == 200) {
           print(loginModel.status);
          // print(loginModel.data!.token);
          token2=loginModel.data!.token.toString();
           prefs!.setString('token',token2);
           print(prefs!.getString('token'));
          
          onSuccess();
        }
      }
    });

    notifyListeners();
  }
}
