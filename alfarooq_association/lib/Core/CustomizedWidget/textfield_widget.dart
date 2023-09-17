// ignore_for_file: must_be_immutable

import 'package:alfarooq_association/Core/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
   TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.icon,
    this.fillColor,
    required this.mycontroller,
  });
String? hintText;
IconData? icon;
Color? fillColor;
TextEditingController mycontroller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: mycontroller,
      
        cursorColor: MyColors.green,
        decoration: 
        InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade400,
            ),
        filled: true,
        hintTextDirection: TextDirection.rtl,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
           color: Colors.grey.shade400,

            
          ),
          
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.grey,
            width: 0.1
          
          ),
          
         borderRadius: BorderRadius.circular(10)
          
        ),
        suffixIcon: Icon(icon,color: MyColors.grey,)
        ),
      ),
    );
  }
}