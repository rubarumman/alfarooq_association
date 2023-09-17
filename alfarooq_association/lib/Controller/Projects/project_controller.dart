import 'dart:convert';
import 'package:alfarooq_association/Core/NetworkController/network_controller.dart';
import 'package:alfarooq_association/Core/exception.dart';
import 'package:alfarooq_association/Core/prefs.dart';
import 'package:alfarooq_association/Core/url_component.dart';
import 'package:alfarooq_association/Model/Projects/projects_model.dart';
import 'package:alfarooq_association/main.dart';
import 'package:flutter/material.dart';

class ProjectsController extends ChangeNotifier {
  NetworkController fetchInfo = NetworkController();
  ProjectModel projectModel = ProjectModel();

 
  void getProjects(Function onSucess) async {
    String? token;
    token = prefs!.getString(Prefs.tokenkey);

    fetchInfo.myhttpClientPost(
      baseUrl,
      "ProjectController.php",
      HttpMethod.Get,
      headers: {'Authorization': 'Bearer $token'},
    ).then((value) {
    
      if (value!.body.isEmpty) {
       
        throw CustomExeption(errorDescreption: "is Empty", statusCode: -1);
      } else {
     
        projectModel = ProjectModel.fromJson(json.decode(value.body));
        if (projectModel.status == 200) {
          onSucess();
        }
      }
    });

    notifyListeners();
  }
}
