import 'dart:convert';
import 'package:alfarooq_association/Core/NetworkController/network_controller.dart';
import 'package:alfarooq_association/Core/exception.dart';
import 'package:alfarooq_association/Core/url_component.dart';
import 'package:alfarooq_association/Model/News/news_model.dart';
import 'package:alfarooq_association/main.dart';
import 'package:flutter/material.dart';

class NewsController extends ChangeNotifier {
  NetworkController fetchInfo = NetworkController();
  NewsModel newsModel = NewsModel();
  
  void getUserInfo(Function onSucess) async {
      String? token;
    token = prefs!.getString('token');

    fetchInfo.myhttpClientPost(
      baseUrl,
      "BannerController.php",
      HttpMethod.Post,
      headers: {'Authorization': 'Bearer $token'},
    ).then((value) {
      if (value!.body.isEmpty) {
        throw CustomExeption(errorDescreption: "is Empty", statusCode: -1);
      } else {
        newsModel = NewsModel.fromJson(json.decode(value.body));
        if (newsModel.status == 200) {
          onSucess();
        }
      }
    });

    notifyListeners();
  }
}
