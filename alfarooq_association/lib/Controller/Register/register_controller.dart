import 'dart:convert';
import 'package:alfarooq_association/Core/NetworkController/network_controller.dart';
import 'package:alfarooq_association/Core/exception.dart';
import 'package:alfarooq_association/Core/prefs.dart';
import 'package:alfarooq_association/Core/url_component.dart';
import 'package:alfarooq_association/Model/Login/login_model.dart';
import 'package:alfarooq_association/Model/Register/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends ChangeNotifier {
  NetworkController registerReq = NetworkController();
  RegisterModel registerModel = RegisterModel();

  void registerRequest(
     String fullName,
     String phone,
     String email,
      String place,
      String job, 
      String password,
      String confirmPassword,
      Function onSuccess) async {
    registerReq.myhttpClientPost(
      baseUrl,
      "RegisterController.php",
      HttpMethod.Post,
      body: {
         "username": fullName,
        "email": email,
        "phone": phone,
        "password": password,
        "confirm_password": confirmPassword,
        "address": place,
        "job": job
      },
    ).then((value) {
      if (value!.body.isEmpty) {
        throw CustomExeption(statusCode: -1, errorDescreption: "is Empty");
      } else {
        registerModel = RegisterModel.fromJson(json.decode(value.body));
        if (registerModel.status == 200) {
          print(registerModel.status);

          onSuccess();
        }
      }
    });

    notifyListeners();
  }
}
