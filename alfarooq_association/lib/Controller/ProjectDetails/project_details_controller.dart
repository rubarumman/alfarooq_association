import 'dart:convert';
import 'package:alfarooq_association/Core/NetworkController/network_controller.dart';
import 'package:alfarooq_association/Core/exception.dart';
import 'package:alfarooq_association/Core/prefs.dart';
import 'package:alfarooq_association/Core/url_component.dart';
import 'package:alfarooq_association/Model/ProjectDetails/project_details_model.dart';
import 'package:alfarooq_association/main.dart';
import 'package:flutter/material.dart';

class ProjectDetailsController extends ChangeNotifier {
  NetworkController fetchInfo = NetworkController();
  ProjectDetailsModel projectDetailsModel = ProjectDetailsModel();

  void getProjectDetails(id, onSucess) async {
    String? token;
    token = prefs!.getString('token');

    fetchInfo.myhttpClientPost(
      baseUrl,
      "ProjectByIdController.php?id=$id",
      HttpMethod.Get,
      headers: {'Authorization': 'Bearer $token'},

    ).then((value) {
      if (value!.body.isEmpty) {
        throw CustomExeption(errorDescreption: "is Empty", statusCode: -1);
      } else {
        projectDetailsModel = ProjectDetailsModel.fromJson(json.decode(value.body));
        if (projectDetailsModel.status == 200) {
          print("s");
          onSucess();
        }
      }
    });

    notifyListeners();
  }
}
