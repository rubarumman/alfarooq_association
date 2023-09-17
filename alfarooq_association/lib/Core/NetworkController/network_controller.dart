

import 'dart:convert';
import 'dart:developer';

import 'package:alfarooq_association/Core/exception.dart';
import 'package:alfarooq_association/Core/url_component.dart';
import 'package:http/http.dart' as http;

class NetworkController{
  Future<http.Response?> myhttpClientPost(
    String baseUrl,
    
    String endPoints,
    HttpMethod method,
    {
      String? paths,
    Map<String,String> ?headers,
    Map<String,String>? parameters,
    dynamic body}
  ) async{
    var url= Uri.parse("$baseUrl$endPoints");
    log(url.toString());
    http.Response response;
    headers?.addAll(vHeader);
    
    switch (method) {
      case HttpMethod.Get:
         url=url.replace(queryParameters: parameters);
      response = await  http.get(url,headers: headers);
        break;

      case HttpMethod.Post:
      response=await http.post(url,headers: headers,body:json.encode(body));
      log(response.body);
      break;

      case HttpMethod.Put :
      response = await http.put(url,headers: headers,body: body);
      break;  
      case HttpMethod.Patch:
      response = await http.patch(url,headers: headers,body: body);
      break;
      case HttpMethod.Delete:
      response = await http.delete(url,headers: headers,body: body);
     
    }

    if(response.statusCode==200){
      return response;
    }
    if(response.statusCode==400){
     throw CustomExeption(errorDescreption: "bad request", statusCode: response.statusCode);
    }
    if(response.statusCode==401 || response.statusCode==403){
     throw CustomExeption(errorDescreption: "please login again", statusCode: response.statusCode);
    }
    if(response.statusCode==404){
      throw CustomExeption(errorDescreption: "Not Found", statusCode: response.statusCode);
    }

    return null;
 

  }

    
  
}