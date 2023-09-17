import 'package:flutter/material.dart';

class Sizes {
  static double width(BuildContext context){
    return MediaQuery.sizeOf(context).width;
  }
  static double  height(BuildContext context){
    return MediaQuery.sizeOf(context).height;
  }

  static double allSizes( BuildContext context){
   return width(context) + height(context);

  }

  static double statusBar(BuildContext context){
    return MediaQuery.of(context).padding.top;
  }
}