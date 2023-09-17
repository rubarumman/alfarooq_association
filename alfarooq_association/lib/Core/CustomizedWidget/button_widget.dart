// ignore_for_file: must_be_immutable

import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
   ButtonWidget({
    super.key,
    required this.data,
    required this.onPressed
  });
  final String data;
   Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,15,8.0,15),
      child: ElevatedButton
      (
        style: ElevatedButton.styleFrom(
         backgroundColor: MyColors.green,
       shape:  
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),

    ),
  
         fixedSize: Size(Sizes.width(context)*0.9, Sizes.height(context)*0.07)
        ),
       onPressed: onPressed,
        child: Text(data,
        style: TextStyle(color: Colors.white,
        fontSize: Sizes.width(context)*0.05),)),
    );
  }
}